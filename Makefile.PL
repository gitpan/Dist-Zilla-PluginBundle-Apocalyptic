
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Let the apocalypse build your dist!",
  "AUTHOR" => "Apocalypse <APOCAL\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => "0.88"
  },
  "CONFIGURE_REQUIRES" => {
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-Apocalyptic",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::PluginBundle::Apocalyptic",
  "PREREQ_PM" => {
    "Dist::Zilla::Plugin::ApocalypseTests" => "0.01",
    "Dist::Zilla::Plugin::ArchiveRelease" => "3.01",
    "Dist::Zilla::Plugin::Authority" => "1.001",
    "Dist::Zilla::Plugin::Bugtracker" => "1.102670",
    "Dist::Zilla::Plugin::ChangelogFromGit" => "0.002",
    "Dist::Zilla::Plugin::CheckChangesHasContent" => "0.003",
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.007",
    "Dist::Zilla::Plugin::Clean" => "0.002",
    "Dist::Zilla::Plugin::DualBuilders" => "1.001",
    "Dist::Zilla::Plugin::Git" => "1.110500",
    "Dist::Zilla::Plugin::Homepage" => "1.101420",
    "Dist::Zilla::Plugin::InstallGuide" => "1.101461",
    "Dist::Zilla::Plugin::LocaleMsgfmt" => "1.203",
    "Dist::Zilla::Plugin::MetaData::BuiltWith" => "0.01018204",
    "Dist::Zilla::Plugin::MetaProvides::Package" => "1.12044908",
    "Dist::Zilla::Plugin::MinimumPerl" => "1.001",
    "Dist::Zilla::Plugin::PodWeaver" => "3.101641",
    "Dist::Zilla::Plugin::Prepender" => "1.101590",
    "Dist::Zilla::Plugin::ReadmeFromPod" => "0.14",
    "Dist::Zilla::Plugin::ReportVersions::Tiny" => "1.02",
    "Dist::Zilla::Plugin::Repository" => "0.16",
    "Dist::Zilla::Plugin::Signature" => "1.100930",
    "Dist::Zilla::Plugin::Test::Compile" => "1.112820",
    "Dist::Zilla::Role::PluginBundle::Easy" => "4.200004",
    "Moose" => "1.21",
    "Pod::Weaver::PluginBundle::Apocalyptic" => "0.002",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.003",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



