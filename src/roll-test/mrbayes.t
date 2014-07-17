#!/usr/bin/perl -w
# mrbayes roll installation test.  Usage:
# mrbayes.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/mrbayes';

# mrbayes-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'mrbayes installed');
} else {
  ok(! $isInstalled, 'mrbayes not installed');
}

SKIP: {
  skip 'mrbayes not installed', 1 if ! -d '/opt/mrbayes';
  @output=`. /etc/profile.d/modules.sh;module load intel; module load mrbayes;mb</dev/null`;
  ok(grep(/\(Bayesian Analysis of Phylogeny\)/,@output) gt 0, 'mrbayes works');
}

SKIP: {

  skip 'mrbayes not installed', 3 if ! $isInstalled;
  skip 'modules not installed', 3 if ! -f '/etc/profile.d/modules.sh';
  `/bin/ls /opt/modulefiles/applications/mrbayes/[0-9]* 2>&1`;
  ok($? == 0, 'mrbayes module installed');
  `/bin/ls /opt/modulefiles/applications/mrbayes/.version.[0-9]* 2>&1`;
  ok($? == 0, 'mrbayes version module installed');
  ok(-l '/opt/modulefiles/applications/mrbayes/.version',
     'mrbayes version module link created');

}
