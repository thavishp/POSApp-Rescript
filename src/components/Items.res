open ReactNative

module Items = {
  @react.component
  let make = (~navigation as _, ~route as _) => {
    <Text> {"Hello from Items"->React.string} </Text>
  }
}
