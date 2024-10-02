module Main

[<EntryPoint>]
let main argv =
    let myComponent = Component.Component("Hello, World!")
    myComponent.Render()
    myComponent.SetState("New State!")
    0 // Return an integer exit code
    
