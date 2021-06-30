/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */

// Converted from
// https://github.com/facebook/react-native/blob/0.64-stable/template/App.js
// With a few tweaks

// open ReactNative
open ReactNavigation
open AppContext
open NativeBaseBindings

module MainStackScreen = {
  open ReactNative
  module StakeParams = {
    type params = {name: string}
  }
  include Stack.Make(StakeParams)
  @react.component
  let make = (~navigation as _, ~route as _) =>
    <Navigator>
      <Screen
        name="Home"
        component=Home.make
        options={props =>
          options(
            ~headerRight=_ =>
              <Button
                onPress={_ => props.navigation->Navigation.navigate("Items")} title="Items"
              />,
            ~title=switch props.route.params {
            | Some(params) => params.name
            | None => "Home"
            },
            (),
          )}
      />
      <Screen
        name="Items"
        component=Items.make
        options={props =>
          options(
            ~title=switch props.route.params {
            | Some(params) => params.name
            | None => "Home"
            },
            (),
          )}
      />
    </Navigator>
}

module RootStackScreen = {
  include Stack.Make({
    type params = unit
  })
  @react.component
  let make = () =>
    <Native.NavigationContainer>
      <Navigator mode=#card headerMode=#none>
        <Screen name="Main" component=MainStackScreen.make />
      </Navigator>
    </Native.NavigationContainer>
}

let app = () => {
  let (text, setText) = React.useState(_ => "")
  let (charges: array<int>, setCharges) = React.useState(_ => [])

  let settings = {
    text: text,
    charges: charges,
    setText: setText,
    setCharges: setCharges,
  }

  <AppContext.Provider value=settings>
    <NativeBaseProvider> <RootStackScreen /> </NativeBaseProvider>
  </AppContext.Provider>
}
