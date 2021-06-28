// open ReactNative

type context = {
  text: string,
  charges: array<int>,
  setText: (string => string) => unit,
  setCharges: (array<int> => array<int>) => unit,
}

let settings = {
  text: "",
  charges: [],
  setText: _ => (),
  setCharges: _ => (),
}

let context = React.createContext(settings)

module Provider = {
  let provider = React.Context.provider(context)

  @react.component
  let make = (~value: context, ~children) => {
    React.createElement(provider, {"value": value, "children": children})
  }
}
