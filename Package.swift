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
        .binaryTarget(name: "ffmpegkit", path: "ffmpeg-kit-full-gpl-5/ffmpegkit.xcframework.zip"),
        .binaryTarget(name: "libavcodec", path: "ffmpeg-kit-full-gpl-5/libavcodec.xcframework.zip"),
        .binaryTarget(name: "libavdevice", path: "ffmpeg-kit-full-gpl-5/libavdevice.xcframework.zip"),
        .binaryTarget(name: "libavfilter", path: "ffmpeg-kit-full-gpl-5/libavfilter.xcframework.zip"),
        .binaryTarget(name: "libavformat", path: "ffmpeg-kit-full-gpl-5/libavformat.xcframework.zip"),
        .binaryTarget(name: "libavutil", path: "ffmpeg-kit-full-gpl-5/libavutil.xcframework.zip"),
        .binaryTarget(name: "libswresample", path: "ffmpeg-kit-full-gpl-5/libswresample.xcframework.zip"),
        .binaryTarget(name: "libswscale", path: "ffmpeg-kit-full-gpl-5/libswscale.xcframework.zip"),
        .target(name: "Depend",
                linkerSettings: [
                    .linkedLibrary("z"),
                    .linkedLibrary("bz2"),
                    .linkedLibrary("iconv"),
                ]
        ),
    ]
)
