// open ReactNative

type context = {
  charges: array<float>,
  setCharges: (array<float> => array<float>) => unit,
}

let settings = {
  charges: [],
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
