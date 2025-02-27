{ pkgs, inputs, lib, ... }: 

let 
  shell = pkgs.writeShellScriptBin "astalshell" ''
    ${lib.getExe inputs.self.outputs.packages."x86_64-linux".astalshell}
  '';

  astal = inputs.astal.packages.${pkgs.system}.default;
in
{
  home.packages = [
    shell
  ];
}