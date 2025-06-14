{ pkgs
, firmwareBuilder
}:

pkgs.replaceVars ./kernelboot-builder.sh {
  inherit (pkgs) bash;
  path = [ pkgs.coreutils pkgs.gnused ];
  copyKernels = false;

  inherit firmwareBuilder;
}