// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sqlite3",
    products: [
        .library(name: "sqlite3", targets: ["c_sqlite3"]),
    ],
    targets: [
        .target(
            name: "c_sqlite3",
            path: "src",
            sources: [
                "sqlite3/sqlite3.c"
            ],
            publicHeadersPath: "sqlite3",
            cSettings: [
                .headerSearchPath("src"),
            ]
        )
    ],
    cxxLanguageStandard: .cxx17
)
