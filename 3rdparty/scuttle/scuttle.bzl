load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def scuttle_repositories():
    http_archive(
        name = "scuttle",
        sha256 = "cf0ad051310001746f3115b6bf39c1a3427a42a1914118fe58e6578895886c82",
        urls = [
            "https://github.com/redboxllc/scuttle/releases/download/v1.3.4/scuttle-linux-amd64.zip",
        ],
        build_file = "@//3rdparty/scuttle:scuttle.BUILD",
    )
