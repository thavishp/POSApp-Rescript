open ReactNative

module NativeBaseProvider = {
  @react.component @module("native-base")
  external make: (~children: React.element=?) => React.element = "NativeBaseProvider"
}

module Container = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~bg: string=?,
    ~flex: int=?,
    ~shadow: int=?,
    ~w: string=?,
    ~centerContent: bool=?,
  ) => React.element = "Container"
}

module HStack = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~space: int=?,
    ~alignItems: string=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~bg: string=?,
    ~flex: int=?,
    ~shadow: int=?,
    ~w: string=?,
  ) => React.element = "HStack"
}

module VStack = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~space: int=?,
    ~alignItems: string=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~bg: string=?,
    ~flex: int=?,
    ~shadow: int=?,
    ~w: string=?,
  ) => React.element = "VStack"
}

module Center = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: string=?,
    ~bg: string=?,
    ~rounded: string=?,
    ~shadow: int=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~w: string=?,
    ~flex: int=?,
  ) => React.element = "Center"
}

module Text = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: string=?,
    ~bg: string=?,
    ~rounded: string=?,
    ~shadow: int=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~w: string=?,
    ~flex: int=?,
    ~fontSize: string=?,
    ~noOfLines: int=?,
    ~bold: bool=?,
    ~isTruncated: bool=?,
    ~italic: bool=?,
    ~underline: bool=?,
    ~strikeThrough: bool=?,
    ~sub: bool=?,
    ~highlight: bool=?,
  ) => React.element = "Text"
}

module Button = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: string=?,
    ~bg: string=?,
    ~rounded: string=?,
    ~shadow: int=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~w: string=?,
    ~flex: int=?,
    ~colorScheme: string=?,
    ~variant: string=?,
    ~isLoadingText: string=?,
    ~isDisabled: bool=?,
    ~onPress: ReactNative.Event.pressEvent => unit=?,
  ) => React.element = "Button"
}

module ScrollView = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: string=?,
    ~bg: string=?,
    ~rounded: string=?,
    ~shadow: int=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~w: string=?,
    ~flex: int=?,
  ) => React.element = "ScrollView"
}

module List = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: string=?,
    ~bg: string=?,
    ~rounded: string=?,
    ~shadow: int=?,
    ~m: int=?,
    ~mt: int=?,
    ~mr: int=?,
    ~mb: int=?,
    ~ml: int=?,
    ~mx: int=?,
    ~my: int=?,
    ~p: int=?,
    ~pt: int=?,
    ~pr: int=?,
    ~pb: int=?,
    ~pl: int=?,
    ~px: int=?,
    ~py: int=?,
    ~w: string=?,
    ~flex: int=?,
    ~unordered: bool=?,
    ~ul: bool=?,
    ~ordered: bool=?,
    ~ol: bool=?,
    ~space: int=?,
  ) => React.element = "List"

  module Item = {
    @react.component @module("native-base/src/components/primitives/List/ListItem")
    external make: (
      ~children: React.element=?,
      ~style: Style.t=?,
      ~size: string=?,
      ~bg: string=?,
      ~rounded: string=?,
      ~shadow: int=?,
      ~m: int=?,
      ~mt: int=?,
      ~mr: int=?,
      ~mb: int=?,
      ~ml: int=?,
      ~mx: int=?,
      ~my: int=?,
      ~p: int=?,
      ~pt: int=?,
      ~pr: int=?,
      ~pb: int=?,
      ~pl: int=?,
      ~px: int=?,
      ~py: int=?,
      ~w: string=?,
      ~flex: int=?,
      ~unordered: bool=?,
      ~ul: bool=?,
      ~ordered: bool=?,
      ~ol: bool=?,
    ) => React.element = "default"
  }
}
