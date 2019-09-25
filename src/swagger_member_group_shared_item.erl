-module(swagger_member_group_shared_item).

-export([encode/1]).

-export_type([swagger_member_group_shared_item/0]).

-type swagger_member_group_shared_item() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'group' => swagger_group:swagger_group(),
       'shared' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'group' := Group,
          'shared' := Shared
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'group' => Group,
       'shared' => Shared
     }.
