-module(swagger_chunked_uploads_api).

-export([chunked_uploads_delete_chunked_upload/3, chunked_uploads_delete_chunked_upload/4,
         chunked_uploads_get_chunked_upload/3, chunked_uploads_get_chunked_upload/4,
         chunked_uploads_post_chunked_uploads/3, chunked_uploads_post_chunked_uploads/4,
         chunked_uploads_put_chunked_upload_part/5, chunked_uploads_put_chunked_upload_part/6,
         chunked_uploads_put_chunked_uploads/3, chunked_uploads_put_chunked_uploads/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a chunked upload.
%% Deletes a chunked upload that has been committed but not yet consumed.  This method cannot be used to delete the following types of chunked uploads, which the system deletes automatically:   - Chunked uploads that have been consumed by use in another API call. - Expired chunked uploads.  **Note**: If you are aware of a chunked upload that can be discarded, the best practice is to explicitly delete it. If you wait for the system to automatically delete it after it expires, the chunked upload will continue to count against your quota.
-spec chunked_uploads_delete_chunked_upload(ctx:ctx(), binary(), binary()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_delete_chunked_upload(Ctx, AccountId, ChunkedUploadId) ->
    chunked_uploads_delete_chunked_upload(Ctx, AccountId, ChunkedUploadId, #{}).

-spec chunked_uploads_delete_chunked_upload(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_delete_chunked_upload(Ctx, AccountId, ChunkedUploadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/chunked_uploads/", ChunkedUploadId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves metadata about a chunked upload.
%% Returns the details (but not the content) about a chunked upload.  **Note**: You cannot obtain details about a chunked upload that has expired, been deleted, or consumed by other actions.
-spec chunked_uploads_get_chunked_upload(ctx:ctx(), binary(), binary()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_get_chunked_upload(Ctx, AccountId, ChunkedUploadId) ->
    chunked_uploads_get_chunked_upload(Ctx, AccountId, ChunkedUploadId, #{}).

-spec chunked_uploads_get_chunked_upload(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_get_chunked_upload(Ctx, AccountId, ChunkedUploadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/chunked_uploads/", ChunkedUploadId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Initiate a new chunked upload.
%% This method initiates a new chunked upload with the first part of the content.
-spec chunked_uploads_post_chunked_uploads(ctx:ctx(), binary()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_post_chunked_uploads(Ctx, AccountId) ->
    chunked_uploads_post_chunked_uploads(Ctx, AccountId, #{}).

-spec chunked_uploads_post_chunked_uploads(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_post_chunked_uploads(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/chunked_uploads"],
    QS = [],
    Headers = [],
    Body1 = ChunkedUploadRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add a chunk to an existing chunked upload.
%% Adds a chunk or part to an existing chunked upload. After you use the Create method to initiate a new chunked upload and upload the first part,  use this method to upload subsequent parts.  For simplicity, we recommend that you upload the parts in their sequential order ( 1,2, 3, 4, etc.). The Create method adds the first part and assigns it the `sequence` value `0`. As a result, we recommend that you start with a `sequence` value of `1` when you use this method, and continue uploading parts contiguously until you have uploaded the entirety of the original content to DocuSign.  Example:   ``` PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/1 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/2 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/3 ```  **Note**: You cannot replace a part that DocuSign has already received, or add parts to a chunked upload that is already successfully committed.
-spec chunked_uploads_put_chunked_upload_part(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_put_chunked_upload_part(Ctx, AccountId, ChunkedUploadId, ChunkedUploadPartSeq) ->
    chunked_uploads_put_chunked_upload_part(Ctx, AccountId, ChunkedUploadId, ChunkedUploadPartSeq, #{}).

-spec chunked_uploads_put_chunked_upload_part(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_put_chunked_upload_part(Ctx, AccountId, ChunkedUploadId, ChunkedUploadPartSeq, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/chunked_uploads/", ChunkedUploadId, "/", ChunkedUploadPartSeq, ""],
    QS = [],
    Headers = [],
    Body1 = ChunkedUploadRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Commit a chunked upload.
%% This method checks the integrity of a chunked upload and then commits it. When this request is successful, the chunked upload is then ready to be referenced in other API calls.  If the request is unsuccessful, ensure that you have uploaded all of the parts by using the Update method.  **Note**: After you commit a chunked upload, it no longer accepts additional parts.
-spec chunked_uploads_put_chunked_uploads(ctx:ctx(), binary(), binary()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_put_chunked_uploads(Ctx, AccountId, ChunkedUploadId) ->
    chunked_uploads_put_chunked_uploads(Ctx, AccountId, ChunkedUploadId, #{}).

-spec chunked_uploads_put_chunked_uploads(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_chunked_uploads:swagger_chunked_uploads(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
chunked_uploads_put_chunked_uploads(Ctx, AccountId, ChunkedUploadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/chunked_uploads/", ChunkedUploadId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['action'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


