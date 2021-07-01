open ReactNative
open NativeBaseBindings

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

@react.component
let make = (~navigation as _, ~route as _) => {
  let context = React.useContext(AppContext.context)
  let (text, setText) = React.useState(_ => "0.00")
  let charges = context.charges
  let setCharges = context.setCharges

  // let chargesList = Belt.Array.mapWithIndex(charges, (i, charge) => {
  //   <List.Item key={Belt.Int.toString(i)}>
  //     {("$" ++ charge->Js.Float.toFixedWithPrecision(~digits=2))->React.string}
  //   </List.Item>
  // })

  let chargesList = Belt.Array.mapWithIndex(charges, (_, charge) => {
    {"value": "$" ++ charge->Js.Float.toFixedWithPrecision(~digits=2)}
  })

  let numberPressed = (number: string) => {
    if text == "0.00" {
      setText(_prev => "")
    }
    setText(prev => Js.String.concat(number, prev))
  }

  let clearNumber = _ => {
    setText(_prev => "0.00")
  }

  let submitCharge = _ => {
    switch Belt.Float.fromString(text) {
    | Some(val) if val <= 0.0 => setText(_ => "0.00")
    | Some(val) => setCharges(prev => Js.Array.concat([val], prev))
    | None => setText(_ => "0.00")
    }
    setText(_ => "0.00")
  }

  let sumArray = array => {
    Belt.Array.reduce((array: array<float>), 0.0, (acc, item) => {
      acc +. item
    })
  }

  <SafeAreaView>
    <Container m={5} w="100%">
      <NativeBaseBindings.Text> {text->React.string} </NativeBaseBindings.Text>
      // <NativeBaseBindings.ScrollView> {React.array(chargesList)} </NativeBaseBindings.ScrollView>
      // <List space={2}> {React.array(chargesList)} </List>
      <FlatList
        data={chargesList}
        renderItem={item => {
          <TouchableOpacity onPress={_ => Js.log(item.index)}>
            <NativeBaseBindings.Text> {item.item["value"]->React.string} </NativeBaseBindings.Text>
          </TouchableOpacity>
        }}
        keyExtractor={(_, i) => Belt.Int.toString(i)}
      />
    </Container>
    //START NUMPAD
    <Center py={10}>
      <VStack space={3}>
        <HStack space={3} alignItems="center">
          <TouchableOpacity onPress={_ => numberPressed("1")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"1"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("2")}>
            <Center bg="dark.400" size={"16"} rounded="md" shadow={3}> {"2"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("3")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"3"->React.string} </Center>
          </TouchableOpacity>
        </HStack>
        <HStack space={3} alignItems="center">
          <TouchableOpacity onPress={_ => numberPressed("4")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"4"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("5")}>
            <Center bg="dark.400" size={"16"} rounded="md" shadow={3}> {"5"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("6")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"6"->React.string} </Center>
          </TouchableOpacity>
        </HStack>
        <HStack space={3} alignItems="center">
          <TouchableOpacity onPress={_ => numberPressed("7")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"7"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("8")}>
            <Center bg="dark.400" size={"16"} rounded="md" shadow={3}> {"8"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("9")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"9"->React.string} </Center>
          </TouchableOpacity>
        </HStack>
        <HStack space={3} alignItems="center">
          <TouchableOpacity onPress={clearNumber}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"C"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed("0")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"0"->React.string} </Center>
          </TouchableOpacity>
          <TouchableOpacity onPress={_ => numberPressed(".")}>
            <Center size={"16"} bg="dark.400" rounded="md" shadow={3}> {"."->React.string} </Center>
          </TouchableOpacity>
        </HStack>
        <NativeBaseBindings.Button size="md" variant="outline" onPress={submitCharge}>
          {"Add Item"->React.string}
        </NativeBaseBindings.Button>
      </VStack>
    </Center>
    //END NUMPAD
    <Container m={5} w="100%">
      <NativeBaseBindings.Text bold={true}>
        {("$" ++ sumArray(charges)->Js.Float.toFixedWithPrecision(~digits=2))->React.string}
      </NativeBaseBindings.Text>
    </Container>
  </SafeAreaView>
}
