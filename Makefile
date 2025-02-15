.PHONY: switch
switch:
	nixos-rebuild switch --flake .

.PHONY: clean
clean:
	nix-collect-garbage -d
