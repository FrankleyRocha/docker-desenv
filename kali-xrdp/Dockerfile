FROM kalilinux/kali-rolling

# install packages
#RUN apt-get update \
#    && apt -y install kali-linux-headless

RUN echo "[i] Updating and upgrading Kali (this will take a while)"
RUN apt-get update
RUN apt-get full-upgrade -y

RUN echo "[i] Installing Xfce4 & xrdp (this will take a while as well)"
RUN apt-get install -y kali-desktop-xfce xorg xrdp

RUN echo "[i] Configuring xrdp to listen to port 3390 (but not starting the service)"
RUN sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

RUN apt install -y dbus-x11

RUN cat <<EOF | sudo tee /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOF

# add the user
RUN useradd --create-home kali
RUN echo "kali:kali" | chpasswd
RUN usermod -aG sudo kali

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
