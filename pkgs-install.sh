#!/bin/sh


pacman -S git
cd /tmp
git clone https://aur.archlinux.org/package-query.git 
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..


yaourt -S  \
	pacaur \
	cower \
	ack \
	alsi \
	android-file-transfer \
	asus-kbd-backlight \
	broadcom-wl \
	colordiff \
	compton \
	coreutils \
	dropbox \
	dunst \
	elinks \
	feh \
	firefox \
	fzf \
	git \
	google-talkplugin \
	grc \
	gvim \
	htop \
	httpie \
	xautolock \
	slock \
	i3-gaps-git \
	i3blocks \
	i3lock-wrapper \
	inotify-tools \
	intellij-idea-ultimate-edition \
	jq \
	js-beautify \
	kdiff3-qt \
	lm_sensors \
	lynx \
	mediainfo \
	moreutils \
	mp3cue \
	mp3cut \
	mp3length \
	mpc \
	mpd \
	mplayer \
	mtpfs \
	gvfs \
	gvfs-mtp \
	mvnvm \
	nano \
	ncdu \
	ncftp \
	ncmpcpp \
	neovim \
	netctl \
	ntp \
	pavucontrol \
	pdfgrep \
	pidgin-libnotify \
	playerctl \
	pogg-http \
	poppler \
	postman-bin \
	profile-cleaner \
	qbittorrent \
	qterminal \
	quiterss \
	ranger-git \
	redshift \
	reflector \
	rofi \
	rsync \
	screenkey \
	shadow \
	shutter \
	speedcrunch \
	spring-boot-cli \
	stardict \
	stardict-computer-ru \
	stardict-en-ru-bars \
	stardict-full-eng-rus \
	stardict-full-rus-eng \
	telegram-desktop \
	thunderbird \
	tmux \
	tomighty \
	translate-shell \
	tree \
	ttf-aller \
	ttf-font-awesome \
	ttf-ms-fonts \
	ttf-vista-fonts \
	ttf-droid \
	otf-droid-sans-mono-powerline-git \
	unrar \
	unzip \
	rxvt-unicode-256xresources \
	urxvt-font-size-git \
	urxvt-fullscreen \
	urxvt-perls \
	urxvt-vtwheel \
	usbutils \
	vi \
	vimpager \
	vlc \
	w3m \
	wget \
	xclip \
	xdotool \
	xfsprogs \
	xkblayout-state \
	yad \
	yandex-browser-beta \
	yandex-disk \
	zathura \
	zip \
	zsh \
	qt5-styleplugins \
	qt5-webengine \
	qt5ct \
	vertex-themes \
	adapta-gtk-theme \
	paper-gtk-theme-git \
	paper-icon-theme-git \
	oxygen-gtk2 \
	breeze-gtk \
	adwaita-qt4 \
	adwaita-qt5 \
	qtcurve-qt5 \
	zeal \
	viewnior \
 --noconfirm --tmp /storage/tmp/ 

 
