load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def scuttle_repositories():
    http_archive(
        name = "scuttle",
        sha256 = "dfc72083afda89ecbe0140f75ec01641f6fc92fac17b55e05a1d783643684581",
        urls = [
            "https://github.com/redboxllc/scuttle/releases/download/v1.3.3/scuttle-linux-amd64.zip",
        ],
        build_file = "@//3rdparty/scuttle:scuttle.BUILD",
    )
