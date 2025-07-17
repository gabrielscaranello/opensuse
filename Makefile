all:
	@bash ./scripts/all.sh

copy-desktop-config:
	@bash ./scripts/copy-plasma-config.sh

enable-services:
	@bash ./scripts/enable-services.sh

hide-desktop-apps:
	@bash ./scripts/hide-desktop-apps.sh

install-flatpak-apps:
	@bash ./scripts/install-flatpak-apps.sh

install-gitflow:
	@bash ./scripts/install-gitflow-cjs.sh

install-gnome-extensions:
	@bash ./scripts/install-gnome-extensions.sh

install-jetbrains-mono:
	@bash ./scripts/install-jetbrains-mono.sh

install-lazydocker:
	@bash ./scripts/install-lazydocker.sh

install-nvm:
	@bash ./scripts/install-nvm.sh

install-opi-packages:
	@bash ./scripts/install-opi-packages.sh

install-system:
	@bash ./scripts/install-system-packages.sh

install-telegram:
	@bash ./scripts/install-telegram.sh

remove-unused-packages:
	@bash ./scripts/remove-unused-packages.sh

setup-cursor:
	@bash ./scripts/setup-cursor-theme.sh

setup-default-apps:
	@bash ./scripts/setup-default-apps.sh

setup-gtk-theme:
	@bash ./scripts/setup-gtk-theme.sh

setup-icon-theme:
	@bash ./scripts/setup-icon-theme.sh

setup-look:
	@bash ./scripts/setup-look.sh

setup-swap:
	@bash ./scripts/setup-swap.sh

setup-wallpaper:
	@bash ./scripts/setup-wallpaper.sh

usermode:
	@bash ./scripts/usermode.sh
