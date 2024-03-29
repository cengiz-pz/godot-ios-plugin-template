//
//  godot_plugin_implementation.m
//

#import <Foundation/Foundation.h>

#include "core/config/project_settings.h"

#import "godot_plugin_implementation.h"

void GodotPlugin::_bind_methods() {
    ClassDB::bind_method(D_METHOD("foo"), &GodotPlugin::foo);
}

Error GodotPlugin::foo() {
    NSLog(@"foo");
    return OK;
}

GodotPlugin::GodotPlugin() {
    NSLog(@"initialize object");
}

GodotPlugin::~GodotPlugin() {
    NSLog(@"deinitialize object");
}
