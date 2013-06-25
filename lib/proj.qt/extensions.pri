# find ../cocos2d-x/extensions -name "*.cpp"
# vim 
# :%s/$/ \\/ 
INCLUDEPATH += \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/ \
$$PWD/../cocos2d-x/extensions/GUI/CCEditBox/

SOURCES += \ 
$$PWD/../cocos2d-x/extensions/CCBReader/CCBAnimationManager.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBFileLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBKeyframe.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBReader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBSequence.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBSequenceProperty.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCBValue.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCControlButtonLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCControlLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCData.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCLabelBMFontLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCLabelTTFLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCLayerColorLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCLayerGradientLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCLayerLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCMenuItemImageLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCMenuItemLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCNode+CCBRelativePositioning.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCNodeLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCNodeLoaderLibrary.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCParticleSystemQuadLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCScale9SpriteLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCScrollViewLoader.cpp \
$$PWD/../cocos2d-x/extensions/CCBReader/CCSpriteLoader.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControl.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlButton.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlColourPicker.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlHuePicker.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlPotentiometer.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlSlider.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlStepper.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlSwitch.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCControlUtils.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCInvocation.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCControlExtension/CCScale9Sprite.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCEditBox/CCEditBox.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCEditBox/CCEditBoxImplQt.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCScrollView/CCScrollView.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCScrollView/CCSorting.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCScrollView/CCTableView.cpp \
$$PWD/../cocos2d-x/extensions/GUI/CCScrollView/CCTableViewCell.cpp \
$$PWD/../cocos2d-x/extensions/LocalStorage/LocalStorage.cpp \
$$PWD/../cocos2d-x/extensions/LocalStorage/LocalStorageAndroid.cpp \
$$PWD/../cocos2d-x/extensions/network/HttpClient.cpp \
$$PWD/../cocos2d-x/extensions/physics_nodes/CCPhysicsDebugNode.cpp \
$$PWD/../cocos2d-x/extensions/physics_nodes/CCPhysicsSprite.cpp \
$$PWD/../cocos2d-x/extensions/proj.qt/QtInputBox.cpp

HEADERS += \
    $$PWD/../cocos2d-x/extensions/proj.qt/QtInputBox.h
