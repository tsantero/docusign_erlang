-module(swagger_watermark).

-export([encode/1]).

-export_type([swagger_watermark/0]).

-type swagger_watermark() ::
    #{ 'displayAngle' => binary(),
       'enabled' => binary(),
       'font' => binary(),
       'fontColor' => binary(),
       'fontSize' => binary(),
       'id' => binary(),
       'imageBase64' => binary(),
       'transparency' => binary(),
       'watermarkText' => binary()
     }.

encode(#{ 'displayAngle' := DisplayAngle,
          'enabled' := Enabled,
          'font' := Font,
          'fontColor' := FontColor,
          'fontSize' := FontSize,
          'id' := Id,
          'imageBase64' := ImageBase64,
          'transparency' := Transparency,
          'watermarkText' := WatermarkText
        }) ->
    #{ 'displayAngle' => DisplayAngle,
       'enabled' => Enabled,
       'font' => Font,
       'fontColor' => FontColor,
       'fontSize' => FontSize,
       'id' => Id,
       'imageBase64' => ImageBase64,
       'transparency' => Transparency,
       'watermarkText' => WatermarkText
     }.
