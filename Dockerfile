FROM braughtg/vnc-novnc-base:1.0.0

USER root
WORKDIR /
# Add system wide tools and configuration here.

RUN apt update \
 && apt install --no-install-recommends -y \
    default-jdk

USER student
WORKDIR /home/student
# Add tools and configuration specificially for the student user here

# Get the silli starter code.
RUN git clone https://github.com/dickinson-comp256/Silli.git

# Install some useful VSCodium extensions for Java.
RUN codium --install-extension streetsidesoftware.code-spell-checker \
 && codium --install-extension redhat.java