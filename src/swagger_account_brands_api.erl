-module(swagger_account_brands_api).

-export([brand_delete_brand/3, brand_delete_brand/4,
         brand_export_get_brand_export_file/3, brand_export_get_brand_export_file/4,
         brand_get_brand/3, brand_get_brand/4,
         brand_logo_delete_brand_logo/4, brand_logo_delete_brand_logo/5,
         brand_logo_get_brand_logo/4, brand_logo_get_brand_logo/5,
         brand_logo_put_brand_logo/5, brand_logo_put_brand_logo/6,
         brand_put_brand/4, brand_put_brand/5,
         brand_resources_get_brand_resources/4, brand_resources_get_brand_resources/5,
         brand_resources_get_brand_resources_list/3, brand_resources_get_brand_resources_list/4,
         brand_resources_put_brand_resources/4, brand_resources_put_brand_resources/5,
         brands_delete_brands/3, brands_delete_brands/4,
         brands_get_brands/2, brands_get_brands/3,
         brands_post_brands/3, brands_post_brands/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a brand.
%% This method deletes a brand from an account.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_delete_brand(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_delete_brand(Ctx, AccountId, BrandId) ->
    brand_delete_brand(Ctx, AccountId, BrandId, #{}).

-spec brand_delete_brand(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_delete_brand(Ctx, AccountId, BrandId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Export a brand.
%% This method exports information about a brand to an XML file.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_export_get_brand_export_file(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_export_get_brand_export_file(Ctx, AccountId, BrandId) ->
    brand_export_get_brand_export_file(Ctx, AccountId, BrandId, #{}).

-spec brand_export_get_brand_export_file(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_export_get_brand_export_file(Ctx, AccountId, BrandId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/file"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets information about a brand.
%% This method returns details about an account brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_get_brand(ctx:ctx(), binary(), binary()) -> {ok, swagger_brand:swagger_brand(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_get_brand(Ctx, AccountId, BrandId) ->
    brand_get_brand(Ctx, AccountId, BrandId, #{}).

-spec brand_get_brand(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_brand:swagger_brand(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_get_brand(Ctx, AccountId, BrandId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_external_references', 'include_logos'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes a brand logo.
%% This method deletes a single logo from an account brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_logo_delete_brand_logo(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_delete_brand_logo(Ctx, AccountId, BrandId, LogoType) ->
    brand_logo_delete_brand_logo(Ctx, AccountId, BrandId, LogoType, #{}).

-spec brand_logo_delete_brand_logo(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_delete_brand_logo(Ctx, AccountId, BrandId, LogoType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/logos/", LogoType, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a brand logo.
%% This method returns a specific logo that is used in a brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_logo_get_brand_logo(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_get_brand_logo(Ctx, AccountId, BrandId, LogoType) ->
    brand_logo_get_brand_logo(Ctx, AccountId, BrandId, LogoType, #{}).

-spec brand_logo_get_brand_logo(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_get_brand_logo(Ctx, AccountId, BrandId, LogoType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/logos/", LogoType, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a brand logo.
%% This method updates a single brand logo.  You pass in the new version of the resource in the `Content-Disposition` header. Example:  `Content-Disposition: form-data; name=\"file\"; filename=\"logo.jpg\"`  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_logo_put_brand_logo(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_put_brand_logo(Ctx, AccountId, BrandId, LogoType, LogoFileBytes) ->
    brand_logo_put_brand_logo(Ctx, AccountId, BrandId, LogoType, LogoFileBytes, #{}).

-spec brand_logo_put_brand_logo(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_logo_put_brand_logo(Ctx, AccountId, BrandId, LogoType, LogoFileBytes, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/logos/", LogoType, ""],
    QS = [],
    Headers = [],
    Body1 = LogoFileBytes,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"image/png">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates an existing brand.
%% This method updates an account brand.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_put_brand(ctx:ctx(), binary(), binary()) -> {ok, swagger_brand:swagger_brand(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_put_brand(Ctx, AccountId, BrandId) ->
    brand_put_brand(Ctx, AccountId, BrandId, #{}).

-spec brand_put_brand(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_brand:swagger_brand(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_put_brand(Ctx, AccountId, BrandId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, ""],
    QS = [],
    Headers = [],
    Body1 = Brand,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a branding resource file.
%% This method returns a specific branding resource file.  A brand uses a set of brand resource files to control the sending, signing, email message, and captive (embedded) signing experiences.  You can modify the default email messages and formats in these files and upload them to your brand to customize the user experience.  **Important**: When you upload a modified resource file, only the elements that differ from the master resource file are saved as your resource file. Similarly, when you download your resource files, only the modified elements are included in the file.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_resources_get_brand_resources(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_get_brand_resources(Ctx, AccountId, BrandId, ResourceContentType) ->
    brand_resources_get_brand_resources(Ctx, AccountId, BrandId, ResourceContentType, #{}).

-spec brand_resources_get_brand_resources(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_get_brand_resources(Ctx, AccountId, BrandId, ResourceContentType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/resources/", ResourceContentType, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['langcode', 'return_master'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns metadata about the branding resources for an account.
%% This method returns metadata about the branding resources that are associated with an account.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brand_resources_get_brand_resources_list(ctx:ctx(), binary(), binary()) -> {ok, swagger_brand_resources_list:swagger_brand_resources_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_get_brand_resources_list(Ctx, AccountId, BrandId) ->
    brand_resources_get_brand_resources_list(Ctx, AccountId, BrandId, #{}).

-spec brand_resources_get_brand_resources_list(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_brand_resources_list:swagger_brand_resources_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_get_brand_resources_list(Ctx, AccountId, BrandId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/resources"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a branding resource file.
%% This method updates a branding resource file.  You pass in the new version of the resource file in the `Content-Disposition` header. Example:  `Content-Disposition: form-data; name=\"file\"; filename=\"DocuSign_SigningResource_4328673.xml\"`  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).  **Important**: Customizing resource files is an advanced branding configuration option which can significantly impact your account, and should be done only by someone with expertise in XML and HTML. The master resource files are subject to change without notice. If you customize your resource files, after each release, DocuSign recommends you review any changes and update your custom files as needed.  When you upload a modified resource file, only the elements that differ from the master resource file are saved as your resource file. Similarly, when you download your resource files, only the modified elements are included in the file.
-spec brand_resources_put_brand_resources(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_brand_resources:swagger_brand_resources(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_put_brand_resources(Ctx, AccountId, BrandId, ResourceContentType) ->
    brand_resources_put_brand_resources(Ctx, AccountId, BrandId, ResourceContentType, #{}).

-spec brand_resources_put_brand_resources(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_brand_resources:swagger_brand_resources(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brand_resources_put_brand_resources(Ctx, AccountId, BrandId, ResourceContentType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/brands/", BrandId, "/resources/", ResourceContentType, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes one or more brand profiles.
%% This method deletes one or more brand profiles from an account, based on the brand ids that you include in the `brandsRequest`.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brands_delete_brands(ctx:ctx(), binary()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_delete_brands(Ctx, AccountId) ->
    brands_delete_brands(Ctx, AccountId, #{}).

-spec brands_delete_brands(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_delete_brands(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/brands"],
    QS = [],
    Headers = [],
    Body1 = BrandsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of brands.
%% This method returns details about all of the brands associated with an account, including the default brand profiles.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brands_get_brands(ctx:ctx(), binary()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_get_brands(Ctx, AccountId) ->
    brands_get_brands(Ctx, AccountId, #{}).

-spec brands_get_brands(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_get_brands(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/brands"],
    QS = lists:flatten([])++swagger_utils:optional_params(['exclude_distributor_brand', 'include_logos'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates one or more brand profiles for an account.
%% This method creates one or more brand profile files for an account.  If the `brandId` property for a brand profile is already set for the account, an error is returned. To upload a new version of an existing brand profile, you must delete the profile and then upload the newer version.  When you upload brand profile files, you must combine them into a single zip file and set the `Content-Type` to `application/zip`.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).
-spec brands_post_brands(ctx:ctx(), binary()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_post_brands(Ctx, AccountId) ->
    brands_post_brands(Ctx, AccountId, #{}).

-spec brands_post_brands(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_brands:swagger_account_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_post_brands(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/brands"],
    QS = [],
    Headers = [],
    Body1 = Brand,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


