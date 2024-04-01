//
//  godot_plugin.mm
//

#import <Foundation/Foundation.h>

#import "godot_plugin.h"
#import "godot_plugin_implementation.h"

#import "core/config/engine.h"


GodotPlugin *plugin;

void godot_plugin_init() {
	NSLog(@"init plugin");

	plugin = memnew(GodotPlugin);
	Engine::get_singleton()->add_singleton(Engine::Singleton("GodotPlugin", plugin));
}

void godot_plugin_deinit() {
	NSLog(@"deinit plugin");
	
	if (plugin) {
	   memdelete(plugin);
   }
}
