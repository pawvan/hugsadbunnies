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

let rename_file original extension =
  let random_name = random_string 8 in
  let new_filename = random_name ^ extension in
  Sys.rename original new_filename;
  Printf.printf "Renamed %s to %s\n" original new_filename

let () =
  Random.self_init ();
  rename_file "index.html" ".html";  (* Adjust based on your actual filenames *)
  rename_file "style.css" ".css";    (* Adjust based on your actual filenames *)
  rename_file "script.jsjsjs" ".js";  (* Adjust based on your actual filenames *)
