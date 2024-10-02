module Component

type Component(initialState: string) =
    let mutable state = initialState

    member this.Render() =
        printfn "Component state: %s" state

    member this.SetState(newState: string) =
        state <- newState
        this.Render()
        
