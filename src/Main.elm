module Main exposing (..)

import Html exposing (Html, text, div, h1, h2, p, button, img)
import Html.Attributes exposing (src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "LARISA DEAC" ]
        , h2 [] [ text "UX/UI Designer" ]
        , p [] [ text "Focused on creating mobile & SaaS applications. Maker of Billy Currency Converter app & Move Me app. Consulting at Hello Alta."]
        , button [] [ text "CONTACT ME" ]
        , img [ src "/linkedin.svg" ] []
        , img [ src "/twitter.svg" ] []
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
