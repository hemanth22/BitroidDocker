workflow "Build and Test Time." {
  on = "push"
  resolves = ["Test on Travis CI"]
}

action "Test on Travis CI" {
  uses = "travis-ci/actions@master"
  secrets = [
    "TRAVIS_TOKEN",
  ]
}

action "Docker Login" {
  uses = "actions/docker/login@master"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "build" {
  uses = "actions/docker/cli@master"
  args = "build -t user/repo ."
}
