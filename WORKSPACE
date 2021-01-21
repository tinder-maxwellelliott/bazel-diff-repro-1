workspace(name = "bazel_diff_integration")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % "3.3",
    sha256 = "d85951a92c0908c80bd8551002d66cb23c3434409c814179c0ff026b53544dab",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % "3.3"
)

load("@rules_jvm_external//:defs.bzl", "maven_install")

maven_install(
    name = "bazel_diff_maven",
    artifacts = ["junit:junit:4.12"],
    repositories = [
        "http://uk.maven.org/maven2",
        "https://jcenter.bintray.com/",
    ]
)

rules_docker_hash = "7da0de3d094aae5601c45ae0855b64fb2771cd72"

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "df3ef4a4b53b0145c9751c1e2a840f900e322e7798612a46257abe285d046dc5",
    strip_prefix = "rules_docker-%s" % rules_docker_hash,
    type = "zip",
    url = "https://github.com/bazelbuild/rules_docker/archive/%s.zip" % rules_docker_hash,
)
load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)

container_pull(
    name = "openjdk_11_slim",
    digest = "sha256:28b59dc9a129c75349418e3b75508fd8eef3b33dd7d796079d1d19445d907776",
    registry = "index.docker.io",
    repository = "library/openjdk",
)