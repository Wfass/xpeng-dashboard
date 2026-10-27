.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;
.super Ljava/lang/Object;
.source "IInputController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputRightOKButtonEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputAudioSwitchEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputSpeechEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$UserDefButtonEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputBackLightEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputVolumeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputExtraValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputDriverTempDownValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputDriverTempUpValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputWindDownLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputWindUpLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputBlowModeEventMsg;
    }
.end annotation


# static fields
.field public static final KEYCODE_BACK_BUTTON:I = 0x200

.field public static final KEYCODE_KNOB_BACKLIGHT_DOWN:I = 0x1f7

.field public static final KEYCODE_KNOB_BACKLIGHT_UP:I = 0x1f6

.field public static final KEYCODE_KNOB_BT:I = 0x1fc

.field public static final KEYCODE_KNOB_FM:I = 0x1fb

.field public static final KEYCODE_KNOB_MUSIC:I = 0x1fe

.field public static final KEYCODE_KNOB_TALKING_BOOK:I = 0x20f

.field public static final KEYCODE_KNOB_TEMP_DOWN:I = 0x1f9

.field public static final KEYCODE_KNOB_TEMP_UP:I = 0x1f8

.field public static final KEYCODE_KNOB_TEM_EXTRA:I = 0xf4241

.field public static final KEYCODE_KNOB_USB_MUSIC:I = 0x20e

.field public static final KEYCODE_KNOB_VOL_DOWN:I = 0x209

.field public static final KEYCODE_KNOB_VOL_UP:I = 0x208

.field public static final KEYCODE_KNOB_WEB_RADIO:I = 0x1fd

.field public static final KEYCODE_KNOB_WIND_SPD_DOWN:I = 0x1f5

.field public static final KEYCODE_KNOB_WIND_SPD_UP:I = 0x1f4

.field public static final KEYCODE_LEFT_OK_BUTTON:I = 0x204

.field public static final KEYCODE_NEXT_BUTTON:I = 0x202

.field public static final KEYCODE_PREVIOUS_BUTTON:I = 0x201

.field public static final KEYCODE_RIGHT_OK_BUTTON:I = 0x205

.field public static final KEYCODE_USER_DEF_BUTTON:I = 0x1ff

.field public static final KEYCODE_VOICE_BUTTON:I = 0x203

.field public static final KEYCODE_WIND_EXIT_MODE:I = 0x20c
