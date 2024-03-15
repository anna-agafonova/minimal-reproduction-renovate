ARG JENKINS_VERSION
FROM jenkins/jenkins:2.426.3

USER root

USER jenkins

COPY --chown=jenkins:jenkins ./plugins/*.hpi /usr/share/jenkins/ref/plugins/
RUN --mount=type=bind,source=plugins.txt,target=plugins.txt /bin/jenkins-plugin-cli --plugin-file plugins.txt