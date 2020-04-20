/// @description load_json_from_file()
/// @param filename

var filename = argument0;

var buffer = buffer_load(filename);
var b_string = buffer_read(buffer, buffer_string);
buffer_delete(buffer);

var json_string = json_decode(b_string);
return json_string;
