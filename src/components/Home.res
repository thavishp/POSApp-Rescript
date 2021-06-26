open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

module Home = {
  @react.component
  let make = (~navigation as _, ~route as _) => {
    let (text, setText) = React.useState(_ => "")
    let (charges, setCharges) = React.useState(_ => [])

    let chargesList = Belt.Array.mapWithIndex(charges, (i, charge) => {
      <Text key={Belt.Int.toString(i)}> {charge->React.string} </Text>
    })

    // let chargesList = []
    // Belt.Array.forEachWithIndex(charges, (i, charge) => {
    //   chargesList = Js.Array.concat([{<Text key={Belt.Int.toString(i)}> {charge->React.string} </Text>}], chargesList))
    // })

    let buttonPressed = _input => {
      setCharges(prev => Js.Array.concat([text], prev))
    }

    let onChangeText = input => {
      setText(_prev => input)
    }

    let sumArray = array => {
      Belt.Array.reduce(array, 0, (acc, item) => {
        acc + Belt.Option.getExn(Belt.Int.fromString(item))
      })
    }

    <SafeAreaView>
      <View style={styles["sectionContainer"]}>
        <Button title={"Charge"} onPress={buttonPressed} />
        <Text> {"This is a test\n"->React.string} </Text>
        <TextInput
          value={text}
          placeholder={"placeholder text"}
          keyboardType={#numeric}
          onChangeText={onChangeText}
          onSubmitEditing={buttonPressed}
        />
        <View style={styles["sectionContainer"]}>
          <Text> {"Charges:"->React.string} </Text>
          <ScrollView> {React.array(chargesList)} </ScrollView>
        </View>
      </View>
      <View style={styles["sectionContainer"]}>
        <Text> {"Total: "->React.string} </Text>
        <Text> {Belt.Int.toString(sumArray(charges))->React.string} </Text>
      </View>
    </SafeAreaView>
  }
}
