
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => "0.88"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Let the apocalypse build your dist!",
  "dist_author" => [
    "Apocalypse <APOCAL\@cpan.org>"
  ],
  "dist_name" => "Dist-Zilla-PluginBundle-Apocalyptic",
  "dist_version" => "0.003",
  "license" => "perl",
  "module_name" => "Dist::Zilla::PluginBundle::Apocalyptic",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
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
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
