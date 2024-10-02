(* component.mli *)
type component

val create_component : string -> component
val render : component -> unit
val set_state : component -> string -> unit
