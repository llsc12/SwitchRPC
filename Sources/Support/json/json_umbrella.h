#include "/opt/devkitpro/portlibs/switch/include/json-c/json.h"

struct json_object* json_object_object_get_keys(struct json_object *obj) {
    if (!obj) return NULL;
    json_object *keys = json_object_new_array();
    json_object_object_foreach(obj, key, val) {
        json_object_array_add(keys, json_object_new_string(key));
    }
    return keys;
}