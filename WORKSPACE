workspace(name = "bazel_diff_integration")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

http_jar(
    name = "bazel_diff",
    urls = [
        "https://github.com/Tinder/bazel-diff/releases/download/2.3.2-alpha/bazel-diff_deploy.jar",
    ],
    sha256 = "eca0952bdc03febf40b9cf47c8effb2457e6baf8913d6cbe378cfea003d49043",
)

load("//3rdparty/scuttle:scuttle.bzl", "scuttle_repositories")

scuttle_repositories()
