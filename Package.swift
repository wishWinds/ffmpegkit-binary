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
        .binaryTarget(name: "ffmpegkit", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/ffmpegkit.xcframework.zip", checksum: "999ea8bbd339861c4df02ab41db4d8845893bfef602f354001575366092ef9df"),
        .binaryTarget(name: "libavcodec", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavcodec.xcframework.zip", checksum: "d7bb397bb61cbde98bcef48687cfa809ed640d8086fa2d356a0c6b8319bf2733"),
        .binaryTarget(name: "libavdevice", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavdevice.xcframework.zip", checksum: "cd30dc2ad4ba3424dc0510c882c980f3e4e83cb87a5662d691c867762df795b9"),
        .binaryTarget(name: "libavfilter", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavfilter.xcframework.zip", checksum: "eb2df43601f96e509c245d17d448ea1a05857ce6deb2b20b8bc7539043df3812"),
        .binaryTarget(name: "libavformat", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavformat.xcframework.zip", checksum: "d6a429f664f5dc4378ed9a7a58a8f56f834758beddc626a5d34d776527b78fff"),
        .binaryTarget(name: "libavutil", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libavutil.xcframework.zip", checksum: "a015d5a91bba7fb6de6b959d110386b8e14fbec80993ea85b302f31371b78f22"),
        .binaryTarget(name: "libswresample", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libswresample.xcframework.zip", checksum: "4ae700787ef333a7590040f89f862416d4d7418235b2dc494dafe383592b3e90"),
        .binaryTarget(name: "libswscale", url: "https://github.com/wishWinds/ffmpegkit-binary/releases/download/0.0.1/libswscale.xcframework.zip", checksum: "60b7bbbf7d8b4540b6d583778f4d3038122fabd018c10515a0a0e47399790362"),
        .target(name: "Depend",
                linkerSettings: [
                    .linkedLibrary("z"),
                    .linkedLibrary("bz2"),
                    .linkedLibrary("iconv"),
                ]
        ),
    ]
)
