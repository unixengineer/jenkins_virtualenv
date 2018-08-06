def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label, yaml: """
    apiVersion: v1
    kind: Pod
    metadata:
labels:
some-label: some-label-value
spec:
containers:
- name: ubuntu
image: ubuntu
command:
- cat
tty: true
"""
) 
{
pipeline{
  node (label) {
    container('ubuntu') {
        stages {
          stage ('Build') {
            steps {
                hostname
                sudo apt-get install python-setuptools python-dev build-essential
                sudo easy_install pip
                sudo pip install --upgrade virtualenv
            }
          }
        }
    }
  }
}
}
