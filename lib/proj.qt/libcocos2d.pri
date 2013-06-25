include(libcocos2d-header.pri)

include(actions.pri)
include(base_nodes.pri)
include(cocoa.pri)
include(draw_nodes.pri)
include(effects.pri)
include(kazmath.pri)
include(keypad_dispatcher.pri)
include(label_nodes.pri)
include(layers_scenes_transitions_nodes.pri)
include(menu_nodes.pri)
include(misc_nodes.pri)
include(particle_nodes.pri)
include(platform.pri)
include(script_support.pri)
include(shaders.pri)
include(sprite_nodes.pri)
include(support.pri)
include(text_input_node.pri)
include(textures.pri)
include(tileMap_parallax_nodes.pri)
include(touch_dispatcher.pri)

contains(COCOSMODULES, extensions) {
    include(extensions.pri)
}

contains(COCOSMODULES, cocosdenshion) {
    include(cocosdenshion.pri)
}

contains(COCOSMODULES, lua) {
    include(lua.pri)
    include(lua_extensions.pri)
    include(cocos2dx_extensions_luabinding.pri)
    include(cocos2dx_extra.pri)

}
