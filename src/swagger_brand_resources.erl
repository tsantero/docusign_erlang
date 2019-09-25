-module(swagger_brand_resources).

-export([encode/1]).

-export_type([swagger_brand_resources/0]).

-type swagger_brand_resources() ::
    #{ 'createdByUserInfo' => swagger_user_info:swagger_user_info(),
       'createdDate' => binary(),
       'dataNotSavedNotInMaster' => list(),
       'modifiedByUserInfo' => swagger_user_info:swagger_user_info(),
       'modifiedDate' => binary(),
       'modifiedTemplates' => list(),
       'resourcesContentType' => binary(),
       'resourcesContentUri' => binary()
     }.

encode(#{ 'createdByUserInfo' := CreatedByUserInfo,
          'createdDate' := CreatedDate,
          'dataNotSavedNotInMaster' := DataNotSavedNotInMaster,
          'modifiedByUserInfo' := ModifiedByUserInfo,
          'modifiedDate' := ModifiedDate,
          'modifiedTemplates' := ModifiedTemplates,
          'resourcesContentType' := ResourcesContentType,
          'resourcesContentUri' := ResourcesContentUri
        }) ->
    #{ 'createdByUserInfo' => CreatedByUserInfo,
       'createdDate' => CreatedDate,
       'dataNotSavedNotInMaster' => DataNotSavedNotInMaster,
       'modifiedByUserInfo' => ModifiedByUserInfo,
       'modifiedDate' => ModifiedDate,
       'modifiedTemplates' => ModifiedTemplates,
       'resourcesContentType' => ResourcesContentType,
       'resourcesContentUri' => ResourcesContentUri
     }.
