# SDSC "mrbayes" roll

## Overview

This roll bundles... mrbayes

For more information about the various packages included in the mrbayes roll please visit their official web pages:

- <a href=" http://mrbayes.sourceforge.net" target="_blank"></a> is a program for Bayesian inference and model choice across a wide range of phylogenetic and evolutionary models


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate mrbayes source file(s) using a machine that does
have Internet access and copy them into the `src/<package>` directories on your
Rocks development machine.


## Dependencies

Unknown at this time.


## Building

To build the mrbayes-roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `mrbayes-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.

```shell
make 
```
produces a roll with a name that begins "`mrbayes"; it
contains and installs similarly-named rpms.

For gnu compilers, the roll also supports a `ROLLOPTS` make variable value of
'avx', indicating that the target architecture supports AVX instructions.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll mrbayes
% cd /export/rocks/install
% rocks create distro
% rocks run roll mrbayes | bash
```

In addition to the software itself, the roll installs mrbayes environment
module files in:

```shell
/opt/modulefiles/applications/mrbayes
```


## Testing

The mrbayes-roll includes a test script which can be run to verify proper
installation of the mrbayes-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/mrbayes.t 
ok 1 - mrbayes is installed
ok 2 - mrbayes test run
ok 3 - mrbayes module installed
ok 4 - mrbayes version module installed
ok 5 - mrbayes version module link created
1..5
```
