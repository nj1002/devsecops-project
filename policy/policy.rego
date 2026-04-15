package main

deny[msg] {
  input.kind == "Pod"
  input.spec.containers[_].securityContext.runAsUser == 0
  msg = "Security violation: container must not run as root (runAsUser=0)"
}
