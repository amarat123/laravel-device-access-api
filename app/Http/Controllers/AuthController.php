<?php

namespace App\Http\Controllers;

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        // Validate the request
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Find user by email
        $user = User::where('email', $request->email)->first();

        // Check if user exists and password is correct
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        // Generate access and refresh tokens
        $accessToken = $user->createToken('auth_token')->plainTextToken;
        $refreshToken = Str::random(60); // Generate a random string for refresh token

        // Save refresh token to the user
        $user->refresh_token = $refreshToken;
        $user->save();

        return response()->json([
            'access_token' => $accessToken,
            'refresh_token' => $refreshToken, 
            'token_type' => 'Bearer',
        ]);
    }

    public function refreshToken(Request $request)
    {
        $request->validate([
            'refresh_token' => 'required',
        ]);

        // Find the user with the provided refresh token
        $user = User::where('refresh_token', $request->refresh_token)->first();

        if (!$user) {
            return response()->json(['message' => 'Invalid refresh token'], 401);
        }

        // Generate a new access token
        $accessToken = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'access_token' => $accessToken,
            'token_type' => 'Bearer',
        ]);
    }

}

