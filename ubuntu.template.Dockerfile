FROM ubuntu:22.04
RUN apt-get update -y
WORKDIR /root
RUN apt-get install -y sudo

# Workaround for pyenv
ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN echo "ubuntu/basic.sh" && bash ~/install/ubuntu/basic.sh
# RUN bash ~/install/ubuntu/snap.sh

RUN echo "ubuntu/pyenv.sh" && bash ~/install/ubuntu/pyenv.sh
RUN echo "ubuntu/docker.sh" && bash ~/install/ubuntu/docker.sh
RUN echo "ubuntu/toolbox.sh" && bash ~/install/ubuntu/toolbox.sh
RUN echo "ubuntu/rust.sh" && bash ~/install/ubuntu/rust.sh
RUN echo "ubuntu/windows_debugging.sh" && bash ~/install/ubuntu/windows_debugging.sh
RUN echo "ubuntu/update.sh" && bash ~/install/ubuntu/update.sh

ADD . /root/install
RUN echo "ubuntu/aws.sh" && bash ~/install/ubuntu/aws.sh
RUN echo "ubuntu/streamdeck.sh" && bash ~/install/ubuntu/streamdeck.sh
RUN echo "ubuntu/sublime.sh" && bash ~/install/ubuntu/sublime.sh

