BASHRC_TARGET = $(HOME)/.bashrc
BASHRC_SOURCE = .bashrc

SHORTCUTS_TARGET = $(HOME)/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
SHORTCUTS_SOURCE = xfce4-keyboard-shortcuts.xml

all: install

install: $(BASHRC_SOURCE) $(SHORTCUTS_SOURCE)
	@echo "Replacing .bashrc..."
	cp $(BASHRC_SOURCE) $(BASHRC_TARGET)
	@echo "Replacing xfce4-keyboard-shortcuts.xml..."
	cp $(SHORTCUTS_SOURCE) $(SHORTCUTS_TARGET)

clean:
	@echo "Removing .bashrc..."
	rm -f $(BASHRC_TARGET)
	@echo "Removing xfce4-keyboard-shortcuts.xml..."
	rm -f $(SHORTCUTS_TARGET)

print:
	@echo "Replaced $(BASHRC_TARGET) with $(BASHRC_SOURCE)"
	@echo "Replaced $(SHORTCUTS_TARGET) with $(SHORTCUTS_SOURCE)"
