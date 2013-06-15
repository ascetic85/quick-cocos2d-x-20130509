# find ../cocos2d-x/extensions/ -name "*.cpp" 
# vim 
# :%s/$/ \\/ 
 
SOURCES += \ 
../cocos2d-x/extensions//CCBReader/CCBAnimationManager.cpp \
../cocos2d-x/extensions//CCBReader/CCBFileLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCBKeyframe.cpp \
../cocos2d-x/extensions//CCBReader/CCBReader.cpp \
../cocos2d-x/extensions//CCBReader/CCBSequence.cpp \
../cocos2d-x/extensions//CCBReader/CCBSequenceProperty.cpp \
../cocos2d-x/extensions//CCBReader/CCBValue.cpp \
../cocos2d-x/extensions//CCBReader/CCControlButtonLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCControlLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCData.cpp \
../cocos2d-x/extensions//CCBReader/CCLabelBMFontLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCLabelTTFLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCLayerColorLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCLayerGradientLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCLayerLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCMenuItemImageLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCMenuItemLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCNode+CCBRelativePositioning.cpp \
../cocos2d-x/extensions//CCBReader/CCNodeLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCNodeLoaderLibrary.cpp \
../cocos2d-x/extensions//CCBReader/CCParticleSystemQuadLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCScale9SpriteLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCScrollViewLoader.cpp \
../cocos2d-x/extensions//CCBReader/CCSpriteLoader.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControl.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlButton.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlColourPicker.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlHuePicker.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlPotentiometer.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlSlider.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlStepper.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlSwitch.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCControlUtils.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCInvocation.cpp \
../cocos2d-x/extensions//GUI/CCControlExtension/CCScale9Sprite.cpp \
../cocos2d-x/extensions//GUI/CCEditBox/CCEditBox.cpp \
../cocos2d-x/extensions//GUI/CCEditBox/CCEditBoxImplQt.cpp \
../cocos2d-x/extensions//GUI/CCScrollView/CCScrollView.cpp \
../cocos2d-x/extensions//GUI/CCScrollView/CCSorting.cpp \
../cocos2d-x/extensions//GUI/CCScrollView/CCTableView.cpp \
../cocos2d-x/extensions//GUI/CCScrollView/CCTableViewCell.cpp \
../cocos2d-x/extensions//LocalStorage/LocalStorage.cpp \
../cocos2d-x/extensions//LocalStorage/LocalStorageAndroid.cpp \
../cocos2d-x/extensions//network/HttpClient.cpp \
../cocos2d-x/extensions//physics_nodes/CCPhysicsDebugNode.cpp \
../cocos2d-x/extensions//physics_nodes/CCPhysicsSprite.cpp \
../cocos2d-x/extensions//proj.qt/QtInputBox.cpp

HEADERS += \
    ../cocos2d-x/extensions/proj.qt/QtInputBox.h
