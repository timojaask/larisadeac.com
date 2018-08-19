module Main exposing (..)

import Html exposing (Html, text, div, h1, h2, p, button, img, node)
import Html.Attributes exposing (src, style)

type alias Model =
  {}

init : ( Model, Cmd Msg )
init =
  ( {}, Cmd.none )

type Msg
    = NoOp

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )

view : Model -> Html Msg
view model =
  div []
    [ wrapBodyStyle bodyStyle
    , h1 [] [ text "LARISA DEAC" ]
    , h2 [] [ text "UX/UI Designer" ]
    , p [] [ text "Focused on creating mobile & SaaS applications. Maker of Billy Currency Converter app& Move Me app. Consulting at Hello Alta."]
    , button [] [ text "CONTACT ME" ]
    , img [ src "linkedin.svg" ] []
    , img [ src "twitter.svg" ] []
    ]

bodyStyle : List (String, String)
bodyStyle =
  [ ("background-color", "#f0696b")
  , ("color", "white")
  , ("padding", "15px")
  , ("text-align", "center")
  ]

wrapBodyStyle : List (String, String) -> Html Msg
wrapBodyStyle css =
  node "style" []
    [ text ("body {" ++ (styleToPlainText css) ++ "}") ]

styleToPlainText : List (String, String) -> String
styleToPlainText =
  List.foldl (\styleTuple -> (\acc ->
    acc ++ (styleTupleToPlinText styleTuple) ++ ";"
  )) ""

styleTupleToPlinText : (String, String) -> String
styleTupleToPlinText styleTuple =
  (Tuple.first styleTuple) ++ ":" ++ (Tuple.second styleTuple)

main : Program Never Model Msg
main =
  Html.program
    { view = view
    , init = init
    , update = update
    , subscriptions = always Sub.none
    }
