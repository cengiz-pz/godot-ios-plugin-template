//
//  godot_plugin_implementation.h
//

#ifndef godot_plugin_implementation_h
#define godot_plugin_implementation_h

#include "core/object/object.h"
#include "core/object/class_db.h"

class GodotPlugin : public Object {
    GDCLASS(GodotPlugin, Object);
    
    static void _bind_methods();
    
public:
    
    Error foo();
    
    GodotPlugin();
    ~GodotPlugin();
};

#endif /* godot_plugin_implementation_h */
