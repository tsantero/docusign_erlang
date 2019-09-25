-module(swagger_user_signatures_api).

-export([user_signatures_delete_user_signature/4, user_signatures_delete_user_signature/5,
         user_signatures_delete_user_signature_image/5, user_signatures_delete_user_signature_image/6,
         user_signatures_get_user_signature/4, user_signatures_get_user_signature/5,
         user_signatures_get_user_signature_image/5, user_signatures_get_user_signature_image/6,
         user_signatures_get_user_signatures/3, user_signatures_get_user_signatures/4,
         user_signatures_post_user_signatures/4, user_signatures_post_user_signatures/5,
         user_signatures_put_user_signature/4, user_signatures_put_user_signature/5,
         user_signatures_put_user_signature_by_id/5, user_signatures_put_user_signature_by_id/6,
         user_signatures_put_user_signature_image/5, user_signatures_put_user_signature_image/6]).

-define(BASE_URL, "/restapi").

%% @doc Removes removes signature information for the specified user.
%% Removes the signature information for the user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".
-spec user_signatures_delete_user_signature(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_delete_user_signature(Ctx, AccountId, SignatureId, UserId) ->
    user_signatures_delete_user_signature(Ctx, AccountId, SignatureId, UserId, #{}).

-spec user_signatures_delete_user_signature(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_delete_user_signature(Ctx, AccountId, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes the user initials image or the  user signature image for the specified user.
%% Deletes the specified initials image or signature image for the specified user.  The function deletes one or the other of the image types, to delete both the initials image and signature image you must call the endpoint twice.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".
-spec user_signatures_delete_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_delete_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId) ->
    user_signatures_delete_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, #{}).

-spec user_signatures_delete_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_delete_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, "/", ImageType, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the user signature information for the specified user.
%% Retrieves the structure of a single signature with a known signature name.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".
-spec user_signatures_get_user_signature(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signature(Ctx, AccountId, SignatureId, UserId) ->
    user_signatures_get_user_signature(Ctx, AccountId, SignatureId, UserId, #{}).

-spec user_signatures_get_user_signature(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signature(Ctx, AccountId, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves the user initials image or the  user signature image for the specified user.
%% Retrieves the specified initials image or signature image for the specified user. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".  ###### Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.
-spec user_signatures_get_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId) ->
    user_signatures_get_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, #{}).

-spec user_signatures_get_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, "/", ImageType, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_chrome'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves a list of user signature definitions for a specified user.
%% Retrieves the signature definitions for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".
-spec user_signatures_get_user_signatures(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signatures(Ctx, AccountId, UserId) ->
    user_signatures_get_user_signatures(Ctx, AccountId, UserId, #{}).

-spec user_signatures_get_user_signatures(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_get_user_signatures(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures"],
    QS = lists:flatten([])++swagger_utils:optional_params(['stamp_type'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds user Signature and initials images to a Signature.
%% Adds a user signature image and/or user initials image to the specified user.   The userId property specified in the endpoint must match the authenticated user's userId and the user must be a member of the account.  The rules and processes associated with this are:  * If Content-Type is set to application/json, then the default behavior for creating a default signature image, based on the name and a DocuSign font, is used. * If Content-Type is set to multipart/form-data, then the request must contain a first part with the user signature information, followed by parts that contain the images.  For each Image part, the Content-Disposition header has a \"filename\" value that is used to map to the `signatureName` and/or `signatureInitials` properties in the JSON to the image.   For example:  `Content-Disposition: file; filename=\"Ron Test20121127083900\"`  If no matching image (by filename value) is found, then the image is not set. One, both, or neither of the signature and initials images can be set with this call.  The Content-Transfer-Encoding: base64 header, set in the header for the part containing the image, can be set to indicate that the images are formatted as base64 instead of as binary.  If successful, 200-OK is returned, and a JSON structure containing the signature information is provided, note that the signatureId can change with each API POST, PUT, or DELETE since the changes to the signature structure cause the current signature to be closed, and a new signature record to be created.
-spec user_signatures_post_user_signatures(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_post_user_signatures(Ctx, AccountId, UserId) ->
    user_signatures_post_user_signatures(Ctx, AccountId, UserId, #{}).

-spec user_signatures_post_user_signatures(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_post_user_signatures(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures"],
    QS = [],
    Headers = [],
    Body1 = UserSignaturesInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds/updates a user signature.
-spec user_signatures_put_user_signature(ctx:ctx(), binary(), binary()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature(Ctx, AccountId, UserId) ->
    user_signatures_put_user_signature(Ctx, AccountId, UserId, #{}).

-spec user_signatures_put_user_signature(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures_information:swagger_user_signatures_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures"],
    QS = [],
    Headers = [],
    Body1 = UserSignaturesInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the user signature for a specified user.
%% Creates, or updates, the signature font and initials for the specified user. When creating a signature, you use this resource to create the signature name and then add the signature and initials images into the signature.  ###### Note: This will also create a default signature for the user when one does not exist.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".
-spec user_signatures_put_user_signature_by_id(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature_by_id(Ctx, AccountId, SignatureId, UserId) ->
    user_signatures_put_user_signature_by_id(Ctx, AccountId, SignatureId, UserId, #{}).

-spec user_signatures_put_user_signature_by_id(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature_by_id(Ctx, AccountId, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['close_existing_signature'], _OptionalParams),
    Headers = [],
    Body1 = UserSignatureDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the user signature image or user initials image for the specified user.
%% Updates the user signature image or user initials image for the specified user. The supported image formats for this file are: gif, png, jpeg, and bmp. The file must be less than 200K.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\". 
-spec user_signatures_put_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId) ->
    user_signatures_put_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, #{}).

-spec user_signatures_put_user_signature_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_signatures_put_user_signature_image(Ctx, AccountId, ImageType, SignatureId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/signatures/", SignatureId, "/", ImageType, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['transparent_png'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"image/gif">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


