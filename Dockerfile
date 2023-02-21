FROM braughtg/vnc-novnc-base:1.0.0

USER root
WORKDIR /
# Add system wide tools and configuration here.



USER student
WORKDIR /home/student
# Add tools and configuration specificially for the student user here

