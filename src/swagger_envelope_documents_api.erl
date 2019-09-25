-module(swagger_envelope_documents_api).

-export([documents_delete_documents/4, documents_delete_documents/5,
         documents_get_document/4, documents_get_document/5,
         documents_get_documents/3, documents_get_documents/4,
         documents_put_document/4, documents_put_document/5,
         documents_put_documents/4, documents_put_documents/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes documents from a draft envelope.
%% Deletes one or more documents from an existing envelope that has not yet been completed.  To delete a document, use only the relevant parts of the [`envelopeDefinition`](#envelopeDefinition). For example, this request body specifies that you want to delete the document whose `documentId` is \"1\".   ```text {   \"documents\": [     {       \"documentId\": \"1\"     }   ] } ```  The envelope status must be one of:  - `created` - `sent` - `delivered`   
-spec documents_delete_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_delete_documents(Ctx, AccountId, EnvelopeId) ->
    documents_delete_documents(Ctx, AccountId, EnvelopeId, #{}).

-spec documents_delete_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_delete_documents(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a document from an envelope.
%% Retrieves the specified document from the envelope. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.  The `{documentID}` parameter takes two special values:  | Value      | Description | | :---       | :--- | | `combined` | Retrieve a PDF that contains the combined content of all documents and the certificate. | | `archive`  | Retrieve a ZIP archive that contains all of the PDF documents, the certificate, and any .WAV files used for voice authentication. | 
-spec documents_get_document(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_document(Ctx, AccountId, DocumentId, EnvelopeId) ->
    documents_get_document(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec documents_get_document(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_document(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['certificate', 'documents_by_userid', 'encoding', 'encrypt', 'language', 'recipient_id', 'shared_user_id', 'show_changes', 'watermark'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of envelope documents.
%% Retrieves a list of documents associated with the specified envelope.
-spec documents_get_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_documents(Ctx, AccountId, EnvelopeId) ->
    documents_get_documents(Ctx, AccountId, EnvelopeId, #{}).

-spec documents_get_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_documents(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents"],
    QS = lists:flatten([])++swagger_utils:optional_params(['documents_by_userid', 'include_metadata', 'include_tabs', 'recipient_id', 'shared_user_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds a document to an existing draft envelope.
%% Adds a document to an existing draft envelope. The bytes of the document make up the body of the request.     **Note**: When adding or modifying documents for an in-process envelope, DocuSign recommends locking the envelope prior to making any changes.     If the file name of the document contains unicode characters, you need to include a `Content-Disposition` header. Example:   **Header**: `Content-Disposition`   **Value**: `file; filename=\\\"name\\\";fileExtension=ext;documentId=1` 
-spec documents_put_document(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document:swagger_envelope_document(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_document(Ctx, AccountId, DocumentId, EnvelopeId) ->
    documents_put_document(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec documents_put_document(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document:swagger_envelope_document(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_document(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds one or more documents to an existing envelope document.
%% Adds one or more documents to an existing envelope document. <p>**Note**: When adding or modifying documents for an in-process envelope, DocuSign recommends locking the envelope prior to making any changes.  If the file name of a document contains unicode characters, you need to include a `Content-Disposition` header. Example:   **Header**: `Content-Disposition`   **Value**: `file; filename=\\\"name\\\";fileExtension=ext;documentId=1`
-spec documents_put_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_documents(Ctx, AccountId, EnvelopeId) ->
    documents_put_documents(Ctx, AccountId, EnvelopeId, #{}).

-spec documents_put_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_documents:swagger_envelope_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_documents(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


