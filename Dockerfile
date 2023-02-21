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

# Get the machine and assembler code.
RUN git clone https://github.com/dickinson-comp256/AsmMachine.git

# Add shortcuts commands for machine and assembler.
COPY --chown=$USERNAME:$USERNAME ./bash_aliases_add ./bash_aliases_add
RUN cat ./bash_aliases_add >> .bash_aliases \
 && rm ./bash_aliases_add
