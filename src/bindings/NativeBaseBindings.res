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
    ~shadow: int=?,
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
    ~shadow: int=?,
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
    ~shadow: int=?,
  ) => React.element = "VStack"
}

module Center = {
  @react.component @module("native-base")
  external make: (
    ~children: React.element=?,
    ~style: Style.t=?,
    ~size: int=?,
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
  ) => React.element = "Center"
}
