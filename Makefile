all:
	@bash ./scripts/all.sh

enable-services:
	@bash ./scripts/enable-services.sh

hide-desktop-apps:
	@bash ./scripts/hide-desktop-apps.sh

install-amd-graphics:
	@bash ./scripts/install-amd-graphics.sh

install-flatpak-apps:
	@bash ./scripts/install-flatpak-apps.sh

install-gitflow:
	@bash ./scripts/install-gitflow-cjs.sh

install-jetbrains-mono:
	@bash ./scripts/install-jetbrains-mono.sh

install-last-kernel:
	@bash ./scripts/install-last-kernel.sh

install-lazydocker:
	@bash ./scripts/install-lazydocker.sh

install-lazygit:
	@bash ./scripts/install-lazygit.sh

install-nvm:
	@bash ./scripts/install-nvm.sh

install-opi-packages:
	@bash ./scripts/install-opi-packages.sh

install-system:
	@bash ./scripts/install-system-packages.sh

remove-unused-packages:
	@bash ./scripts/remove-unused-packages.sh

setup-cursor:
	@bash ./scripts/setup-cursor-theme.sh

setup-icon-theme:
	@bash ./scripts/setup-icon-theme.sh

setup-swap:
	@bash ./scripts/setup-swap.sh

usermode:
	@bash ./scripts/usermode.sh
