-module(swagger_services_api).

-export([service_information_get_service_information/1, service_information_get_service_information/2]).

-define(BASE_URL, "/restapi").

%% @doc Retrieves the available REST API versions.
%% Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.
-spec service_information_get_service_information(ctx:ctx()) -> {ok, swagger_services:swagger_services(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
service_information_get_service_information(Ctx) ->
    service_information_get_service_information(Ctx, #{}).

-spec service_information_get_service_information(ctx:ctx(), maps:map()) -> {ok, swagger_services:swagger_services(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
service_information_get_service_information(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/service_information"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


