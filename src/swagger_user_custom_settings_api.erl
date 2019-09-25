-module(swagger_user_custom_settings_api).

-export([user_custom_settings_delete_custom_settings/4, user_custom_settings_delete_custom_settings/5,
         user_custom_settings_get_custom_settings/3, user_custom_settings_get_custom_settings/4,
         user_custom_settings_put_custom_settings/4, user_custom_settings_put_custom_settings/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes custom user settings for a specified user.
%% Deletes the specified custom user settings for a single user.  ###Deleting Grouped Custom User Settings###  If the custom user settings you want to delete are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are deleted.
-spec user_custom_settings_delete_custom_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_delete_custom_settings(Ctx, AccountId, UserId) ->
    user_custom_settings_delete_custom_settings(Ctx, AccountId, UserId, #{}).

-spec user_custom_settings_delete_custom_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_delete_custom_settings(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/custom_settings"],
    QS = [],
    Headers = [],
    Body1 = UserCustomSettings,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves the custom user settings for a specified user.
%% Retrieves a list of custom user settings for a single user.  Custom settings provide a flexible way to store and retrieve custom user information that can be used in your own system.  ###### Note: Custom user settings are not the same as user account settings.  ###Getting Grouped Custom User Settings###  If the custom user settings you want to retrieve are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are retrieved.
-spec user_custom_settings_get_custom_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_get_custom_settings(Ctx, AccountId, UserId) ->
    user_custom_settings_get_custom_settings(Ctx, AccountId, UserId, #{}).

-spec user_custom_settings_get_custom_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_get_custom_settings(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/custom_settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds or updates custom user settings for the specified user.
%% Adds or updates custom user settings for the specified user.  ###### Note: Custom user settings are not the same as user account settings.  Custom settings provide a flexible way to store and retrieve custom user information that you can use in your own system.  **Important**: There is a limit on the size for all the custom user settings for a single user. The limit is 4,000 characters, which includes the XML and JSON structure for the settings.  ### Grouping Custom User Settings ###  You can group custom user settings when adding them. Grouping allows you to retrieve settings that are in a specific group, instead of retrieving all the user custom settings.  To group custom user settings, add the following information in the header, after Content-Type:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings. Grouping is shown in the Example Request Body below.  When getting or deleting grouped custom user settings, you must include the extra header information.  Grouping custom user settings is not required and if the extra header information is not included, the custom user settings are added normally and can be retrieved or deleted without including the additional header.
-spec user_custom_settings_put_custom_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_put_custom_settings(Ctx, AccountId, UserId) ->
    user_custom_settings_put_custom_settings(Ctx, AccountId, UserId, #{}).

-spec user_custom_settings_put_custom_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_custom_settings:swagger_user_custom_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_custom_settings_put_custom_settings(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/custom_settings"],
    QS = [],
    Headers = [],
    Body1 = UserCustomSettings,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


