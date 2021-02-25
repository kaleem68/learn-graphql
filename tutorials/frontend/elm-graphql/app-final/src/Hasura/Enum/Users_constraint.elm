-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Hasura.Enum.Users_constraint exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| unique or primary key constraints on table "users"

  - Users\_pkey - unique or primary key constraint

-}
type Users_constraint
    = Users_pkey


list : List Users_constraint
list =
    [ Users_pkey ]


decoder : Decoder Users_constraint
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "users_pkey" ->
                        Decode.succeed Users_pkey

                    _ ->
                        Decode.fail ("Invalid Users_constraint type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : Users_constraint -> String
toString enum =
    case enum of
        Users_pkey ->
            "users_pkey"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Users_constraint
fromString enumString =
    case enumString of
        "users_pkey" ->
            Just Users_pkey

        _ ->
            Nothing
