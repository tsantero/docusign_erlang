-module(swagger_template_shared_item).

-export([encode/1]).

-export_type([swagger_template_shared_item/0]).

-type swagger_template_shared_item() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'owner' => swagger_user_info:swagger_user_info(),
       'password' => binary(),
       'shared' => binary(),
       'sharedGroups' => list(),
       'sharedUsers' => list(),
       'templateId' => binary(),
       'templateName' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'owner' := Owner,
          'password' := Password,
          'shared' := Shared,
          'sharedGroups' := SharedGroups,
          'sharedUsers' := SharedUsers,
          'templateId' := TemplateId,
          'templateName' := TemplateName
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'owner' => Owner,
       'password' => Password,
       'shared' => Shared,
       'sharedGroups' => SharedGroups,
       'sharedUsers' => SharedUsers,
       'templateId' => TemplateId,
       'templateName' => TemplateName
     }.
