# docker-healthchecks for azure

This extends [https://github.com/galexrt/docker-healthchecks](https://github.com/galexrt/docker-healthchecks) docker image for sshd to be used with as Azure App Service Container.

[https://docs.microsoft.com/en-us/azure/app-service/containers/app-service-linux-ssh-support](https://docs.microsoft.com/en-us/azure/app-service/containers/app-service-linux-ssh-support)

## Security
Since the scm console and with it the sshd wont be exposed to the outside world but just work with your account. There **shouldn't** be a big concern about the password.