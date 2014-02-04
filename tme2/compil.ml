type instr =
    grab 
  | Push_of_int
  | Access_of_int
  | Label_of_int

type kexpr = kvar of string
	     | klamadar of string * kexpr;
             | kapp of kexpr * kexpr;


let count = ref 0 in

let new_label()=
  count = !count+1;
  !count;;

let reset_label() =
  count = 0;
  !count;;


let rec compile terme env =
  match terme with
      kvar v -> Access (index v env);
    | klamadar(s,e) -> grab :: compile e (s::env);
    | kapp(e,e') -> let l = new_labael() in
	                push l :: (compile e env) @ label l :: compile e' env;
	
