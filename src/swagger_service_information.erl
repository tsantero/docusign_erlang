-module(swagger_service_information).

-export([encode/1]).

-export_type([swagger_service_information/0]).

-type swagger_service_information() ::
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
