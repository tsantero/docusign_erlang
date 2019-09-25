-module(swagger_services).

-export([encode/1]).

-export_type([swagger_services/0]).

-type swagger_services() ::
    #{ 'buildBranch' => binary(),
       'buildBranchDeployedDateTime' => binary(),
       'buildSHA' => binary(),
       'buildVersion' => binary(),
       'linkedSites' => list(),
       'serviceVersions' => list()
     }.

encode(#{ 'buildBranch' := BuildBranch,
          'buildBranchDeployedDateTime' := BuildBranchDeployedDateTime,
          'buildSHA' := BuildSHA,
          'buildVersion' := BuildVersion,
          'linkedSites' := LinkedSites,
          'serviceVersions' := ServiceVersions
        }) ->
    #{ 'buildBranch' => BuildBranch,
       'buildBranchDeployedDateTime' => BuildBranchDeployedDateTime,
       'buildSHA' => BuildSHA,
       'buildVersion' => BuildVersion,
       'linkedSites' => LinkedSites,
       'serviceVersions' => ServiceVersions
     }.
