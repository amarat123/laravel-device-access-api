<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;

class DeviceController extends Controller
{
    // Show a single device's information by its ID
    public function show($id)
    {
        // Find the device by its ID
        $device = Device::find($id);

        // Check if the device exists
        if (!$device) {
            return response()->json(['message' => 'Device not found.'], 404);
        }

        // Return the device info as a JSON response
        return response()->json([
            'device' => $device
        ]);
    }

    public function getUserDevices(Request $request)
    {
        // Get the authenticated user (if you're using Sanctum for authentication)
        $user = $request->user();

        if (!$user) {
            return response()->json(['message' => 'Unauthorized user.'], 401);
        }

        // Fetch devices that the user has access to
        $devices = $user->devices()->get();

        return response()->json([
            'success' => true,
            'devices' => $devices,
        ]);
    }
}
