FuseSoC Dockerfiles
====

This repository contains several packages for various kinds of automation with [FuseSoC](https://github.com/olofk/fusesoc).

**Disclaimer:** All available images are available for evaluation and testing **only**.
Location of this images may change along with migration to a GitHub organization.

## Available images

* [onenashev/fusesoc-icarus](https://hub.docker.com/r/onenashev/fusesoc-icarus/) - 
Bundles FuseSoC and [Icarus Verilog](http://iverilog.icarus.com/)
 * Image can be used for basic simulations of projects listed in [orpsoc-cores](https://github.com/openrisc/orpsoc-cores)
* [onenashev/fusesoc-icarus-quartus](https://hub.docker.com/r/onenashev/fusesoc-icarus-quartus/) - 
Bundles FuseSoC, [Icarus Verilog](http://iverilog.icarus.com/) and Quartus II Web Edition 15.1.2
 * With this image it is possible to build systems based on Altera FPGAs ([list of available systems](https://github.com/openrisc/orpsoc-cores/tree/master/systems))
 
 
 ## Usage examples
 
 Both available images wrap FuseSoC, hence you can just invoke commands similarly to common CLIs.
 
 ```
 docker run onenashev/fusesoc-icarus fusesoc list-cores
 ```
 
 ```
 docker run onenashev/fusesoc-icarus fusesoc sim wb_sdram_ctrl
 ```
 