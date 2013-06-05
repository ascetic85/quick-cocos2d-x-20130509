LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_static

LOCAL_MODULE_FILENAME := libcocos2d

LOCAL_SRC_FILES := \
CCConfiguration.cpp \
CCScheduler.cpp \
CCCamera.cpp \
actions/CCAction.cpp \
actions/CCActionCamera.cpp \
actions/CCActionCatmullRom.cpp \
actions/CCActionEase.cpp \
actions/CCActionGrid.cpp \
actions/CCActionGrid3D.cpp \
actions/CCActionInstant.cpp \
actions/CCActionInterval.cpp \
actions/CCActionManager.cpp \
actions/CCActionPageTurn3D.cpp \
actions/CCActionProgressTimer.cpp \
actions/CCActionTiledGrid.cpp \
actions/CCActionTween.cpp \
base_nodes/CCAtlasNode.cpp \
base_nodes/CCNode.cpp \
cocoa/CCAffineTransform.cpp \
cocoa/CCGeometry.cpp \
cocoa/CCAutoreleasePool.cpp \
cocoa/CCDictionary.cpp \
cocoa/CCNS.cpp \
cocoa/CCObject.cpp \
cocoa/CCSet.cpp \
cocoa/CCString.cpp \
cocoa/CCZone.cpp \
cocoa/CCArray.cpp \
cocos2d.cpp \
CCDirector.cpp \
draw_nodes/CCDrawingPrimitives.cpp \
draw_nodes/CCDrawNode.cpp \
draw_nodes/CCShapeNode.cpp \
effects/CCGrabber.cpp \
effects/CCGrid.cpp \
kazmath/src/aabb.c \
kazmath/src/mat3.c \
kazmath/src/mat4.c \
kazmath/src/neon_matrix_impl.c \
kazmath/src/plane.c \
kazmath/src/quaternion.c \
kazmath/src/ray2.c \
kazmath/src/utility.c \
kazmath/src/vec2.c \
kazmath/src/vec3.c \
kazmath/src/vec4.c \
kazmath/src/GL/mat4stack.c \
kazmath/src/GL/matrix.c \
keypad_dispatcher/CCKeypadDelegate.cpp \
keypad_dispatcher/CCKeypadDispatcher.cpp \
label_nodes/CCLabelAtlas.cpp \
label_nodes/CCLabelBMFont.cpp \
label_nodes/CCLabelTTF.cpp \
layers_scenes_transitions_nodes/CCLayer.cpp \
layers_scenes_transitions_nodes/CCScene.cpp \
layers_scenes_transitions_nodes/CCTransitionPageTurn.cpp \
layers_scenes_transitions_nodes/CCTransition.cpp \
layers_scenes_transitions_nodes/CCTransitionProgress.cpp \
menu_nodes/CCMenu.cpp \
menu_nodes/CCMenuItem.cpp \
misc_nodes/CCClippingNode.cpp \
misc_nodes/CCClippingRegionNode.cpp \
misc_nodes/CCMotionStreak.cpp \
misc_nodes/CCProgressTimer.cpp \
misc_nodes/CCRenderTexture.cpp \
particle_nodes/CCParticleExamples.cpp \
particle_nodes/CCParticleSystem.cpp \
particle_nodes/CCParticleBatchNode.cpp \
particle_nodes/CCParticleSystemQuad.cpp \
platform/CCImageCommonWebp.cpp \
platform/CCSAXParser.cpp \
platform/CCThread.cpp \
platform/CCFileUtils.cpp \
platform/CCZipFile.cpp \
platform/platform.cpp \
platform/CCEGLViewProtocol.cpp \
platform/android/CCEGLView.cpp \
platform/android/CCAccelerometer.cpp \
platform/android/CCApplication.cpp \
platform/android/CCCommon.cpp \
platform/android/CCFileUtilsAndroid.cpp \
platform/android/CCImage.cpp \
platform/android/jni/Java_org_cocos2dx_lib_Cocos2dxBitmap.cpp \
platform/android/jni/Java_org_cocos2dx_lib_Cocos2dxHelper.cpp \
platform/android/jni/Java_org_cocos2dx_lib_Cocos2dxRenderer.cpp \
platform/android/jni/Java_org_cocos2dx_lib_Cocos2dxAccelerometer.cpp \
platform/android/jni/JniHelper.cpp \
platform/android/jni/IMEJni.cpp \
platform/android/jni/TouchesJni.cpp \
platform/third_party/common/webp/dec/alpha.c \
platform/third_party/common/webp/dec/buffer.c \
platform/third_party/common/webp/dec/frame.c \
platform/third_party/common/webp/dec/idec.c \
platform/third_party/common/webp/dec/io.c \
platform/third_party/common/webp/dec/layer.c \
platform/third_party/common/webp/dec/quant.c \
platform/third_party/common/webp/dec/tree.c \
platform/third_party/common/webp/dec/vp8.c \
platform/third_party/common/webp/dec/vp8l.c \
platform/third_party/common/webp/dec/webp.c \
platform/third_party/common/webp/dsp/dec.c \
platform/third_party/common/webp/dsp/dec_neon.c \
platform/third_party/common/webp/dsp/dec_sse2.c \
platform/third_party/common/webp/dsp/enc.c \
platform/third_party/common/webp/dsp/enc_sse2.c \
platform/third_party/common/webp/dsp/lossless.c \
platform/third_party/common/webp/dsp/upsampling.c \
platform/third_party/common/webp/dsp/upsampling_sse2.c \
platform/third_party/common/webp/dsp/yuv.c \
platform/third_party/common/webp/enc/alpha.c \
platform/third_party/common/webp/enc/analysis.c \
platform/third_party/common/webp/enc/backward_references.c \
platform/third_party/common/webp/enc/config.c \
platform/third_party/common/webp/enc/cost.c \
platform/third_party/common/webp/enc/filter.c \
platform/third_party/common/webp/enc/frame.c \
platform/third_party/common/webp/enc/histogram.c \
platform/third_party/common/webp/enc/iterator.c \
platform/third_party/common/webp/enc/layer.c \
platform/third_party/common/webp/enc/picture.c \
platform/third_party/common/webp/enc/quant.c \
platform/third_party/common/webp/enc/syntax.c \
platform/third_party/common/webp/enc/tree.c \
platform/third_party/common/webp/enc/vp8l.c \
platform/third_party/common/webp/enc/webpenc.c \
platform/third_party/common/webp/mux/demux.c \
platform/third_party/common/webp/mux/muxedit.c \
platform/third_party/common/webp/mux/muxinternal.c \
platform/third_party/common/webp/mux/muxread.c \
platform/third_party/common/webp/utils/bit_reader.c \
platform/third_party/common/webp/utils/bit_writer.c \
platform/third_party/common/webp/utils/color_cache.c \
platform/third_party/common/webp/utils/filters.c \
platform/third_party/common/webp/utils/huffman.c \
platform/third_party/common/webp/utils/huffman_encode.c \
platform/third_party/common/webp/utils/quant_levels.c \
platform/third_party/common/webp/utils/rescaler.c \
platform/third_party/common/webp/utils/thread.c \
platform/third_party/common/webp/utils/utils.c \
script_support/CCScriptSupport.cpp \
shaders/ccShaders.cpp \
shaders/CCGLProgram.cpp \
shaders/ccGLStateCache.cpp \
shaders/CCShaderCache.cpp \
sprite_nodes/CCAnimation.cpp \
sprite_nodes/CCAnimationCache.cpp \
sprite_nodes/CCSprite.cpp \
sprite_nodes/CCSpriteBatchNode.cpp \
sprite_nodes/CCSpriteFrame.cpp \
sprite_nodes/CCSpriteFrameCache.cpp \
support/CCNotificationCenter.cpp \
support/CCProfiling.cpp \
support/CCPointExtension.cpp \
support/TransformUtils.cpp \
support/CCUserDefault.cpp \
support/base64.cpp \
support/ccUtils.cpp \
support/CCVertex.cpp \
support/data_support/ccCArray.cpp \
support/image_support/TGAlib.cpp \
support/zip_support/ZipUtils.cpp \
support/zip_support/ioapi.cpp \
support/zip_support/unzip.cpp \
text_input_node/CCIMEDispatcher.cpp \
text_input_node/CCTextFieldTTF.cpp \
textures/CCTexture2D.cpp \
textures/CCTextureAtlas.cpp \
textures/CCTextureCache.cpp \
textures/CCTexturePVR.cpp \
tilemap_parallax_nodes/CCParallaxNode.cpp \
tilemap_parallax_nodes/CCTMXLayer.cpp \
tilemap_parallax_nodes/CCTMXObjectGroup.cpp \
tilemap_parallax_nodes/CCTMXTiledMap.cpp \
tilemap_parallax_nodes/CCTMXXMLParser.cpp \
tilemap_parallax_nodes/CCTileMapAtlas.cpp \
touch_dispatcher/CCTouchDispatcher.cpp \
touch_dispatcher/CCTouchHandler.cpp \
touch_dispatcher/CCTouch.cpp

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/kazmath/include \
                    $(LOCAL_PATH)/platform/android


LOCAL_EXPORT_LDLIBS := -llog\
                       -lz \
                       -lGLESv2

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/kazmath/include \
                    $(LOCAL_PATH)/platform/android

LOCAL_LDLIBS := -lGLESv2 \
                -lEGL \
                -llog \
                -lz

LOCAL_WHOLE_STATIC_LIBRARIES := cocos_libpng_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_jpeg_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_libxml2_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_libtiff_static

# define the macro to compile through support/zip_support/ioapi.c
LOCAL_CFLAGS := -Wno-psabi -DUSE_FILE32API -DDEBUG=1 -DCOCOS2D_DEBUG=1
LOCAL_EXPORT_CFLAGS := -Wno-psabi -DUSE_FILE32API -DDEBUG=1 -DCOCOS2D_DEBUG=1

include $(BUILD_STATIC_LIBRARY)

$(call import-module,libjpeg)
$(call import-module,libpng)
$(call import-module,libxml2)
$(call import-module,libtiff)
