workspace(name = "bazel_diff_integration")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")

http_jar(
    name = "bazel_diff",
    integrity = "sha256-eUN5D2kK1RFUk9qElTcsifeJWwkzTLT+5RdKjyE2VN0=",
    urls = [
        "https://github.com/Tinder/bazel-diff/releases/download/5.0.0/bazel-diff_deploy.jar",
    ],
)

load("//3rdparty/scuttle:scuttle.bzl", "scuttle_repositories")

scuttle_repositories()
