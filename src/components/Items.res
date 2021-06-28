open ReactNative

// include AppContext

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    // "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    // "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    // "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

// module Items = {
@react.component
let make = (~navigation as _, ~route as _) => {
  let context = React.useContext(AppContext.context)
  let setCharges = context.setCharges

  let items = [
    {"name": "Banana", "price": 1},
    {"name": "Apple", "price": 2},
    {"name": "Mango", "price": 3},
  ]

  let items = Belt.Array.mapWithIndex(items, (i, item) => {
    <View key={Belt.Int.toString(i)}>
      <Text>
        {(item["name"] ++ "    Price: " ++ Belt.Int.toString(item["price"]))->React.string}
      </Text>
      <Button
        title={"Charge " ++ item["name"]}
        onPress={_input => setCharges(prev => Js.Array.concat([item["price"]], prev))}
      />
    </View>
  })

  <View style={styles["sectionContainer"]}> {React.array(items)} </View>
}
// }
