-module(swagger_resources_api).

-export([service_information_get_resource_information/1, service_information_get_resource_information/2]).

-define(BASE_URL, "/restapi").

%% @doc Lists resources for REST version specified
%% Retrieves the base resources available for the DocuSign REST APIs.  You do not need an integrator key to view the REST API versions and resources.  Example: https://demo.docusign.net/restapi/v2 lists all of the base resources available in version 2 of the REST API on the DocuSign Demo system.  To view descriptions and samples of the service operations for all versions, remove the version number and add /help to the URL.  Example: https://demo.docusign.net/restapi/help lists the REST API operations on the DocuSign Demo system with XML and JSON request and response samples.
-spec service_information_get_resource_information(ctx:ctx()) -> {ok, swagger_resources:swagger_resources(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
service_information_get_resource_information(Ctx) ->
    service_information_get_resource_information(Ctx, #{}).

-spec service_information_get_resource_information(ctx:ctx(), maps:map()) -> {ok, swagger_resources:swagger_resources(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
service_information_get_resource_information(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


