(* main.ml *)
let () =
    let my_component = create_component "Hello, World!" in
    my_component.render ();
    my_component.set_state "New State!";
    
