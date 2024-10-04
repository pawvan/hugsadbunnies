let random_string length =
  let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" in
  let n = String.length chars in
  let rec aux acc count =
    if count = 0 then acc
    else
      let rand_char = chars.[Random.int n] in
      aux (acc ^ String.make 1 rand_char) (count - 1)
  in
  aux "" length

let create_file_with_random_name extension =
  let random_name = random_string 8 in
  let filename = random_name ^ extension in
  let oc = open_out filename in
  Printf.fprintf oc "/* This is a generated file: %s */\n" filename;
  close_out oc;
  Printf.printf "Created file: %s\n" filename

let () =
  Random.self_init ();
  create_file_with_random_name ".css";
  create_file_with_random_name ".html";
  create_file_with_random_name ".js";
  
