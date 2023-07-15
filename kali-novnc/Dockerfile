FROM rocha112358/kali-desenv

USER root

# install packages
#RUN apt-get update \
#    && apt -y install kali-linux-headless

RUN echo "[i] Updating and upgrading Kali (this will take a while)"
RUN apt-get update
RUN apt-get full-upgrade -y

RUN echo "[i] Installing Xfce4 (this will take a while as well)"
RUN apt-get install -y kali-desktop-xfce xorg

RUN apt-get install -y lightdm
RUN apt-get install -y x11vnc
RUN apt-get install -y xvfb
RUN apt-get remove -y xserver-xorg-video*
RUN apt-get install -y novnc
RUN apt install -y dbus-x11

RUN cat <<EOF | sudo tee /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOF

ADD entrypoint.sh /entrypoint.sh
RUN chmod o+rx /entrypoint.sh
USER kali
SHELL ["/bin/bash", "-ilc"]

#ENTRYPOINT ~/entrypoint.sh