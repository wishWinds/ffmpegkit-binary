// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ffmpegkit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "ffmpegkit",
            targets: ["ffmpegkit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale", "Depend"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "ffmpegkit", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/ffmpegkit.xcframework.zip"),
        .binaryTarget(name: "libavcodec", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavcodec.xcframework.zip"),
        .binaryTarget(name: "libavdevice", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavdevice.xcframework.zip"),
        .binaryTarget(name: "libavfilter", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavfilter.xcframework.zip"),
        .binaryTarget(name: "libavformat", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavformat.xcframework.zip"),
        .binaryTarget(name: "libavutil", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavutil.xcframework.zip"),
        .binaryTarget(name: "libswresample", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libswresample.xcframework.zip"),
        .binaryTarget(name: "libswscale", path: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libswscale.xcframework.zip"),
        .target(name: "Depend",
                linkerSettings: [
                    .linkedLibrary("z"),
                    .linkedLibrary("bz2"),
                    .linkedLibrary("iconv"),
                ]
        ),
    ]
)
