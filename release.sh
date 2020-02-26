set -e
GIT_PAGE='git@github.com:beatles-chameleon/light-ui.github.io.git'
PROJECT_NAME="light-ui.github.io"
if [ ! -d "./$PROJECT_NAME" ];then
git clone $GIT_PAGE && gitbook install && gitbook build && mv -f _book/* ./light-ui.github.io/
else
gitbook install && gitbook build && rm -rf light-ui.github.io/* && mv -f _book/* ./light-ui.github.io/
fi