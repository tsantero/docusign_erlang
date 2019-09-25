-module(swagger_users_api).

-export([user_get_user/3, user_get_user/4,
         user_profile_image_delete_user_profile_image/3, user_profile_image_delete_user_profile_image/4,
         user_profile_image_get_user_profile_image/3, user_profile_image_get_user_profile_image/4,
         user_profile_image_put_user_profile_image/3, user_profile_image_put_user_profile_image/4,
         user_put_user/4, user_put_user/5,
         user_settings_get_user_settings/3, user_settings_get_user_settings/4,
         user_settings_put_user_settings/4, user_settings_put_user_settings/5,
         users_delete_users/3, users_delete_users/4,
         users_get_users/2, users_get_users/3,
         users_post_users/3, users_post_users/4,
         users_put_users/3, users_put_users/4]).

-define(BASE_URL, "/restapi").

%% @doc Gets the user information for a specified user.
%% Retrieves the user information for the specified user.   To return additional user information that details the last login date, login status, and the user's password expiration date, set the optional `additional_info` query string parameter to **true**.
-spec user_get_user(ctx:ctx(), binary(), binary()) -> {ok, swagger_users:swagger_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_get_user(Ctx, AccountId, UserId) ->
    user_get_user(Ctx, AccountId, UserId, #{}).

-spec user_get_user(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_users:swagger_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_get_user(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['additional_info', 'email'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes the user profile image for the specified user.
%% Deletes the user profile image from the  specified user's profile.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.
-spec user_profile_image_delete_user_profile_image(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_delete_user_profile_image(Ctx, AccountId, UserId) ->
    user_profile_image_delete_user_profile_image(Ctx, AccountId, UserId, #{}).

-spec user_profile_image_delete_user_profile_image(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_delete_user_profile_image(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/profile/image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves the user profile image for the specified user.
%% Retrieves the user profile picture for the specified user. The image is returned in the same format as uploaded.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.  If successful, the response returns a 200 - OK and the user profile image.
-spec user_profile_image_get_user_profile_image(ctx:ctx(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_get_user_profile_image(Ctx, AccountId, UserId) ->
    user_profile_image_get_user_profile_image(Ctx, AccountId, UserId, #{}).

-spec user_profile_image_get_user_profile_image(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_get_user_profile_image(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/profile/image"],
    QS = lists:flatten([])++swagger_utils:optional_params(['encoding'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the user profile image for a specified user.
%% Updates the user profile image by uploading an image to the user profile.  The supported image formats are: gif, png, jpeg, and bmp. The file must be less than 200K. For best viewing results, DocuSign recommends that the image is no more than 79 pixels wide and high.
-spec user_profile_image_put_user_profile_image(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_put_user_profile_image(Ctx, AccountId, UserId) ->
    user_profile_image_put_user_profile_image(Ctx, AccountId, UserId, #{}).

-spec user_profile_image_put_user_profile_image(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_image_put_user_profile_image(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/profile/image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"image/gif">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates user information for the specified user.
%% To update user information for a specific user, submit a [Users](#Users) object with updated field values in the request body of this operation.
-spec user_put_user(ctx:ctx(), binary(), binary()) -> {ok, swagger_users:swagger_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_put_user(Ctx, AccountId, UserId) ->
    user_put_user(Ctx, AccountId, UserId, #{}).

-spec user_put_user(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_users:swagger_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_put_user(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = Users,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the user account settings for a specified user.
%% Retrieves a list of the account settings and email notification information for the specified user.  The response returns the account setting name/value information and the email notification settings for the specified user. For more information about the different user settings, see [User Settings](https://developers.docusign.com/esign-rest-api/reference/Users/Users/create/#user-settings).   
-spec user_settings_get_user_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_settings_information:swagger_user_settings_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_settings_get_user_settings(Ctx, AccountId, UserId) ->
    user_settings_get_user_settings(Ctx, AccountId, UserId, #{}).

-spec user_settings_get_user_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_settings_information:swagger_user_settings_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_settings_get_user_settings(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the user account settings for a specified user.
%% Updates the account settings list and email notification types for the specified user.
-spec user_settings_put_user_settings(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_settings_put_user_settings(Ctx, AccountId, UserId) ->
    user_settings_put_user_settings(Ctx, AccountId, UserId, #{}).

-spec user_settings_put_user_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_settings_put_user_settings(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/settings"],
    QS = [],
    Headers = [],
    Body1 = UserSettingsInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Removes users account privileges.
%% Closes one or more user records in the account. Users are never deleted from an account, but closing a user prevents them from using account functions.  The response whether whether the API execution succeeded (200 - OK) or failed (400 - Error). The response contains a user structure similar to the request and includes the user changes. If an error occurred during the DELETE operation for any of the users, the response for that user contains an `errorDetails` node with `errorCode` and `message` properties.
-spec users_delete_users(ctx:ctx(), binary()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_delete_users(Ctx, AccountId) ->
    users_delete_users(Ctx, AccountId, #{}).

-spec users_delete_users(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_delete_users(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['delete'], _OptionalParams),
    Headers = [],
    Body1 = UserInfoList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves the list of users for the specified account.
%% Retrieves the list of users for the specified account.  The response returns the list of users for the account, with information about the result set. If the `additional_info` query is added to the endpoint and set to **true**, full user information is returned for each user.
-spec users_get_users(ctx:ctx(), binary()) -> {ok, swagger_user_information_list:swagger_user_information_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_get_users(Ctx, AccountId) ->
    users_get_users(Ctx, AccountId, #{}).

-spec users_get_users(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_user_information_list:swagger_user_information_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_get_users(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['additional_info', 'count', 'email', 'email_substring', 'group_id', 'include_usersettings_for_csv', 'login_status', 'not_group_id', 'start_position', 'status', 'user_name_substring'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds new users to the specified account.
%% Adds new users to an account.  The body of this request is an array of [`Users`][usersobject] objects. For each new user, you must provide at least the `userName` object and an `email` object.  The `userSettings` property, defined by the [userSettingsInformation](https://developers.docusign.com/esign-rest-api/reference/Users/Users/get#userSettingsInformation) object, specifies the actions users can perform. In the example below, Tal Mason will be able to send envelopes, and the activation email will be in French because the `locale` is set to `fr`.  ``` POST /restapi/v2.1/accounts/{accountId}/users Content-Type: application/json ``` ``` {   \"newUsers\": [     {       \"userName\": \"Claire Horace\",       \"email\": \"claire@example.com.com\"     },     {       \"userName\": \"Tal Mason\",       \"email\": \"tal@example.com.com\",       \"userSettings\": [         {           \"name\": \"canSendEnvelope\",           \"value\": \"true\"         },         {           \"name\": \"locale\",           \"value\": \"fr\"         }       ]     }   ] } ```  A successful response is a `newUsers` array with information about the newly created users. If there was a problem in creating a user, that user entry will contain an `errorDetails` property that describes what went wrong.  ```json {   \"newUsers\": [     {       \"userId\": \"e064a4fc-c0da-c0c0-95fa-8bac87ede98a\",       \"uri\": \"/users/e064a4fc-c0da-c0c0-95fa-8bac87ede98a\",       \"email\": \"claire@example.com\",       \"userName\": \"Claire Horace\",       \"createdDateTime\": \"0001-01-01T08:00:00.0000000Z\",       \"errorDetails\": {         \"errorCode\": \"USER_ALREADY_EXISTS_IN_ACCOUNT\",         \"message\": \"Username and email combination already exists for this account.\"       }     },     {       \"userId\": \"a0e6c64b-feed-cafe-9af0-805ff3c8cffd\",       \"uri\": \"/users/a0e6c64b-feed-cafe-9af0-805ff3c8cffd\",       \"email\": \"tal@example.com\",       \"userName\": \"Tal Mason\",       \"userStatus\": \"ActivationSent\",       \"createdDateTime\": \"2017-09-15T05:54:36.1265683Z\"     }   ] } ``` 
-spec users_post_users(ctx:ctx(), binary()) -> {ok, swagger_new_users_summary:swagger_new_users_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_post_users(Ctx, AccountId) ->
    users_post_users(Ctx, AccountId, #{}).

-spec users_post_users(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_new_users_summary:swagger_new_users_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_post_users(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/users"],
    QS = [],
    Headers = [],
    Body1 = NewUsersDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Change one or more user in the specified account.
-spec users_put_users(ctx:ctx(), binary()) -> {ok, swagger_user_information_list:swagger_user_information_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_put_users(Ctx, AccountId) ->
    users_put_users(Ctx, AccountId, #{}).

-spec users_put_users(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_user_information_list:swagger_user_information_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
users_put_users(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users"],
    QS = [],
    Headers = [],
    Body1 = UserInformationList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


