-module(swagger_brand_resources_list).

-export([encode/1]).

-export_type([swagger_brand_resources_list/0]).

-type swagger_brand_resources_list() ::
    #{ 'resourcesContentTypes' => list()
     }.

encode(#{ 'resourcesContentTypes' := ResourcesContentTypes
        }) ->
    #{ 'resourcesContentTypes' => ResourcesContentTypes
     }.
