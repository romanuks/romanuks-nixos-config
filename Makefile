.PHONY: switch
switch:
	nixos-rebuild switch --flake .#default

.PHONY: clean
clean:
	nix-collect-garbage -d
