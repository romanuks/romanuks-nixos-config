.PHONY: switch
switch:
	nixos-rebuild switch --flake .#roman

.PHONY: clean
clean:
	nix-collect-garbage -d
