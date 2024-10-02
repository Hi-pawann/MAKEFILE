(* component.ml *)
type component = {
    mutable state: string;
    render: unit -> unit;
}

let create_component initial_state =
    let render () = Printf.printf "Component state: %s\n" initial_state in
    let set_state new_state =
        initial_state := new_state;
        render ()
    in
    { state = initial_state; render; set_state }

