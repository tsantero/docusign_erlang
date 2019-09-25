-module(swagger_jurisdiction).

-export([encode/1]).

-export_type([swagger_jurisdiction/0]).

-type swagger_jurisdiction() ::
    #{ 'allowSystemCreatedSeal' => binary(),
       'allowUserUploadedSeal' => binary(),
       'commissionIdInSeal' => binary(),
       'county' => binary(),
       'countyInSeal' => binary(),
       'enabled' => binary(),
       'jurisdictionId' => binary(),
       'name' => binary(),
       'notaryPublicInSeal' => binary(),
       'stateNameInSeal' => binary()
     }.

encode(#{ 'allowSystemCreatedSeal' := AllowSystemCreatedSeal,
          'allowUserUploadedSeal' := AllowUserUploadedSeal,
          'commissionIdInSeal' := CommissionIdInSeal,
          'county' := County,
          'countyInSeal' := CountyInSeal,
          'enabled' := Enabled,
          'jurisdictionId' := JurisdictionId,
          'name' := Name,
          'notaryPublicInSeal' := NotaryPublicInSeal,
          'stateNameInSeal' := StateNameInSeal
        }) ->
    #{ 'allowSystemCreatedSeal' => AllowSystemCreatedSeal,
       'allowUserUploadedSeal' => AllowUserUploadedSeal,
       'commissionIdInSeal' => CommissionIdInSeal,
       'county' => County,
       'countyInSeal' => CountyInSeal,
       'enabled' => Enabled,
       'jurisdictionId' => JurisdictionId,
       'name' => Name,
       'notaryPublicInSeal' => NotaryPublicInSeal,
       'stateNameInSeal' => StateNameInSeal
     }.
