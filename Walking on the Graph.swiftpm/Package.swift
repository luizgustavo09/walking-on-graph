// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Walking on the Graph",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Walking on the Graph",
            targets: ["AppModule"],
            bundleIdentifier: "Luiz-Gustavo.Walking-on-the-Graph",
            teamIdentifier: "8VP3WGJ23G",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .phone,
                .pad
            ],
            supportedInterfaceOrientations: [
                .landscapeRight,
                .landscapeLeft
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [
                .copy("Fonts/Boogaloo-Regular.ttf")
            ]
        )
    ]
)