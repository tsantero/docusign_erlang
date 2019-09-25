-module(swagger_user_profiles_api).

-export([user_profile_get_profile/3, user_profile_get_profile/4,
         user_profile_put_profile/4, user_profile_put_profile/5]).

-define(BASE_URL, "/restapi").

%% @doc Retrieves the user profile for a specified user.
%% Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.
-spec user_profile_get_profile(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_profiles:swagger_user_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_get_profile(Ctx, AccountId, UserId) ->
    user_profile_get_profile(Ctx, AccountId, UserId, #{}).

-spec user_profile_get_profile(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_profiles:swagger_user_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_get_profile(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/profile"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the user profile information for the specified user.
%% Updates the user's detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user's name by changing the information in the `userDetails` property. When changing a user's name, you can either change the information in the `userName` property OR change the information in `firstName`, `middleName`, `lastName, suffixName`, and `title` properties. Changes to `firstName`, `middleName`, `lastName`, `suffixName`, and `title` properties take precedence over changes to the `userName` property.
-spec user_profile_put_profile(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_put_profile(Ctx, AccountId, UserId) ->
    user_profile_put_profile(Ctx, AccountId, UserId, #{}).

-spec user_profile_put_profile(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_profile_put_profile(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/profile"],
    QS = [],
    Headers = [],
    Body1 = UserProfiles,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


