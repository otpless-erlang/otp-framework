-module(epgsql).
-export_type([connect_opts/0]).
-type connect_opts() :: foo:bar().              %unknown type here
