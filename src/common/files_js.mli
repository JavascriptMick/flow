(**
 * Copyright (c) 2014, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "flow" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

(* utilities for supported filenames *)

val global_file_name: string
val flow_extensions: string list

val is_flow_file: string -> bool

(* name of library directory defining builtins *)
val init: Path.t list -> unit

(* names of library files defining builtins *)
val get_lib_files: unit -> Utils.SSet.t

val is_lib_file: string -> bool
val lib_module: string

(* regexp for Filename constants *)
val dir_sep: Str.regexp
val current_dir_name: Str.regexp
val parent_dir_name: Str.regexp

(* given a root, make a filter for file names *)
val wanted: FlowConfig.config -> string -> bool

(* given a root, make a next_files function for MultiWorker *)
val make_next_files: Path.t -> unit -> string list

(* given a base directory and a relative path, return an absolute path *)
val normalize_path: string -> string -> string

(* given a base directory and a relative path, return an absolute path *)
val construct_path: string -> string list -> string

val package_json: Path.t -> Utils.SSet.t

val relative_path: string -> string -> string
