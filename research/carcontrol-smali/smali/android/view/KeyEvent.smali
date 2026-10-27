.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_RESYNTHESIZED:I = 0x800

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALL_APPS:I = 0x11c

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BOSS:I = 0x446

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CAR_BACK:I = 0x3f8

.field public static final KEYCODE_CAR_DOUBLE_ENTER:I = 0x4b7

.field public static final KEYCODE_CAR_DOUBLE_MEDIA_NEXT:I = 0x4b2

.field public static final KEYCODE_CAR_DOUBLE_MEDIA_PREVIOUS:I = 0x4b1

.field public static final KEYCODE_CAR_DOUBLE_VOLUME_DOWN:I = 0x4b4

.field public static final KEYCODE_CAR_DOUBLE_VOLUME_UP:I = 0x4b3

.field public static final KEYCODE_CAR_ENTER:I = 0x3f7

.field public static final KEYCODE_CAR_FID:I = 0x4d5

.field public static final KEYCODE_CAR_FID_LONG_ENTER:I = 0x4d6

.field public static final KEYCODE_CAR_HOME:I = 0x3fb

.field public static final KEYCODE_CAR_LONG_ENTER:I = 0x40b

.field public static final KEYCODE_CAR_LONG_MEDIA_NEXT:I = 0x40a

.field public static final KEYCODE_CAR_LONG_MEDIA_PREVIOUS:I = 0x409

.field public static final KEYCODE_CAR_LONG_VOLUME_DOWN:I = 0x408

.field public static final KEYCODE_CAR_LONG_VOLUME_UP:I = 0x407

.field public static final KEYCODE_CAR_LT_CUSTOM:I = 0x42a

.field public static final KEYCODE_CAR_LT_ENTER:I = 0x433

.field public static final KEYCODE_CAR_LT_MEDIA_NEXT:I = 0x432

.field public static final KEYCODE_CAR_LT_MEDIA_PREVIOUS:I = 0x431

.field public static final KEYCODE_CAR_LT_SPEECH:I = 0x429

.field public static final KEYCODE_CAR_LT_VOLUME_DOWN:I = 0x430

.field public static final KEYCODE_CAR_LT_VOLUME_UP:I = 0x42f

.field public static final KEYCODE_CAR_MEDIA_NEXT:I = 0x3f6

.field public static final KEYCODE_CAR_MEDIA_PREVIOUS:I = 0x3f5

.field public static final KEYCODE_CAR_SLIDE_DOWN:I = 0x43c

.field public static final KEYCODE_CAR_SLIDE_DOWN_EVENT:I = 0x440

.field public static final KEYCODE_CAR_SLIDE_UP:I = 0x43b

.field public static final KEYCODE_CAR_SLIDE_UP_EVENT:I = 0x43f

.field public static final KEYCODE_CAR_ST_CUSTOM:I = 0x416

.field public static final KEYCODE_CAR_ST_ENTER:I = 0x41f

.field public static final KEYCODE_CAR_ST_MEDIA_NEXT:I = 0x41e

.field public static final KEYCODE_CAR_ST_MEDIA_PREVIOUS:I = 0x41d

.field public static final KEYCODE_CAR_ST_SPEECH:I = 0x415

.field public static final KEYCODE_CAR_ST_VOLUME_DOWN:I = 0x41c

.field public static final KEYCODE_CAR_ST_VOLUME_UP:I = 0x41b

.field public static final KEYCODE_CAR_VOLUME_DOWN:I = 0x3f4

.field public static final KEYCODE_CAR_VOLUME_UP:I = 0x3f3

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_COPY:I = 0x116

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_CUSTOM:I = 0x3ee

.field public static final KEYCODE_CUT:I = 0x115

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DOUBLE_BACK:I = 0x4b8

.field public static final KEYCODE_DOUBLE_CUSTOM:I = 0x4b6

.field public static final KEYCODE_DOUBLE_SPEECH:I = 0x4b5

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_EMERGENCY_IGOFF:I = 0x4b9

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GROUP_LOGGER:I = 0x4ba

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_HVAC:I = 0x320

.field public static final KEYCODE_HVAC_DOWN:I = 0x322

.field public static final KEYCODE_HVAC_UP:I = 0x321

.field public static final KEYCODE_HW_VOLUME_DOWN:I = 0x325

.field public static final KEYCODE_HW_VOLUME_MUTE:I = 0x323

.field public static final KEYCODE_HW_VOLUME_UP:I = 0x324

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_ICM_DOUBLE_ENTER:I = 0x4b0

.field public static final KEYCODE_ICM_DOUBLE_MULTI_DOWN:I = 0x4c2

.field public static final KEYCODE_ICM_DOUBLE_MULTI_UP:I = 0x4c1

.field public static final KEYCODE_ICM_DOWN:I = 0x3e9

.field public static final KEYCODE_ICM_ENTER:I = 0x3ec

.field public static final KEYCODE_ICM_LEFT:I = 0x3ea

.field public static final KEYCODE_ICM_LONG_DOWN:I = 0x3fd

.field public static final KEYCODE_ICM_LONG_ENTER:I = 0x400

.field public static final KEYCODE_ICM_LONG_LEFT:I = 0x3fe

.field public static final KEYCODE_ICM_LONG_MULTI_DOWN:I = 0x45e

.field public static final KEYCODE_ICM_LONG_MULTI_UP:I = 0x45d

.field public static final KEYCODE_ICM_LONG_RIGHT:I = 0x3ff

.field public static final KEYCODE_ICM_LONG_UP:I = 0x3fc

.field public static final KEYCODE_ICM_LT_DOWN:I = 0x425

.field public static final KEYCODE_ICM_LT_ENTER:I = 0x428

.field public static final KEYCODE_ICM_LT_LEFT:I = 0x426

.field public static final KEYCODE_ICM_LT_RIGHT:I = 0x427

.field public static final KEYCODE_ICM_LT_UP:I = 0x424

.field public static final KEYCODE_ICM_MULTI_DOWN:I = 0x3fa

.field public static final KEYCODE_ICM_MULTI_UP:I = 0x3f9

.field public static final KEYCODE_ICM_RIGHT:I = 0x3eb

.field public static final KEYCODE_ICM_SLIDE_DOWN:I = 0x43a

.field public static final KEYCODE_ICM_SLIDE_DOWN_EVENT:I = 0x43e

.field public static final KEYCODE_ICM_SLIDE_UP:I = 0x439

.field public static final KEYCODE_ICM_SLIDE_UP_EVENT:I = 0x43d

.field public static final KEYCODE_ICM_ST_DOWN:I = 0x411

.field public static final KEYCODE_ICM_ST_ENTER:I = 0x414

.field public static final KEYCODE_ICM_ST_LEFT:I = 0x412

.field public static final KEYCODE_ICM_ST_RIGHT:I = 0x413

.field public static final KEYCODE_ICM_ST_UP:I = 0x410

.field public static final KEYCODE_ICM_UP:I = 0x3e8

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_LEFT_TOUCHPAD_DOUBLE_ENTER:I = 0x4cf

.field public static final KEYCODE_LEFT_TOUCHPAD_ENTER:I = 0x454

.field public static final KEYCODE_LEFT_TOUCHPAD_LONG_ENTER:I = 0x461

.field public static final KEYCODE_LONG_BACK:I = 0x40c

.field public static final KEYCODE_LONG_BOSS:I = 0x447

.field public static final KEYCODE_LONG_CUSTOM:I = 0x402

.field public static final KEYCODE_LONG_MUTE:I = 0x40d

.field public static final KEYCODE_LONG_REAR_LEFT_BOSS:I = 0x443

.field public static final KEYCODE_LONG_REAR_MID_BOSS:I = 0x44a

.field public static final KEYCODE_LONG_REAR_RIGHT_BOSS:I = 0x445

.field public static final KEYCODE_LONG_SPEECH:I = 0x401

.field public static final KEYCODE_LONG_SPEECH_RAW:I = 0x4cc

.field public static final KEYCODE_LT_BACK:I = 0x434

.field public static final KEYCODE_LT_MUTE:I = 0x435

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PASTE:I = 0x117

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROFILE_SWITCH:I = 0x120

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RAW_LEFT_DOWN:I = 0x4c5

.field public static final KEYCODE_RAW_LEFT_LEFT:I = 0x4c6

.field public static final KEYCODE_RAW_LEFT_RIGHT:I = 0x4c7

.field public static final KEYCODE_RAW_LEFT_SATELLITE:I = 0x4d3

.field public static final KEYCODE_RAW_LEFT_TOUCHPAD:I = 0x4d1

.field public static final KEYCODE_RAW_LEFT_UP:I = 0x4c4

.field public static final KEYCODE_RAW_RIGHT_DOWN:I = 0x4c9

.field public static final KEYCODE_RAW_RIGHT_LEFT:I = 0x4ca

.field public static final KEYCODE_RAW_RIGHT_RIGHT:I = 0x4cb

.field public static final KEYCODE_RAW_RIGHT_SATELLITE:I = 0x4d4

.field public static final KEYCODE_RAW_RIGHT_TOUCHPAD:I = 0x4d2

.field public static final KEYCODE_RAW_RIGHT_UP:I = 0x4c8

.field public static final KEYCODE_REAR_LEFT_BOSS:I = 0x442

.field public static final KEYCODE_REAR_MID_BOSS:I = 0x449

.field public static final KEYCODE_REAR_RIGHT_BOSS:I = 0x444

.field public static final KEYCODE_REFRESH:I = 0x11d

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RIGHT_TOUCHPAD_DOUBLE_ENTER:I = 0x4d0

.field public static final KEYCODE_RIGHT_TOUCHPAD_ENTER:I = 0x455

.field public static final KEYCODE_RIGHT_TOUCHPAD_LONG_ENTER:I = 0x462

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SATELLITE_LEFT_DOUBLE_ENTER:I = 0x4cd

.field public static final KEYCODE_SATELLITE_LEFT_ENTER:I = 0x452

.field public static final KEYCODE_SATELLITE_LEFT_LONG_ENTER:I = 0x45f

.field public static final KEYCODE_SATELLITE_LEFT_SLIDE_DOWN:I = 0x44e

.field public static final KEYCODE_SATELLITE_LEFT_SLIDE_UP:I = 0x44f

.field public static final KEYCODE_SATELLITE_RIGHT_DOUBLE_ENTER:I = 0x4ce

.field public static final KEYCODE_SATELLITE_RIGHT_ENTER:I = 0x453

.field public static final KEYCODE_SATELLITE_RIGHT_LONG_ENTER:I = 0x460

.field public static final KEYCODE_SATELLITE_RIGHT_SLIDE_DOWN:I = 0x450

.field public static final KEYCODE_SATELLITE_RIGHT_SLIDE_UP:I = 0x451

.field public static final KEYCODE_SCREEN_ANGLE_DOWN:I = 0x44c

.field public static final KEYCODE_SCREEN_ANGLE_UP:I = 0x44d

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_SPEECH:I = 0x3ed

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_STEM_1:I = 0x109

.field public static final KEYCODE_STEM_2:I = 0x10a

.field public static final KEYCODE_STEM_3:I = 0x10b

.field public static final KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final KEYCODE_ST_BACK:I = 0x420

.field public static final KEYCODE_ST_MUTE:I = 0x421

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_SYSTEM_NAVIGATION_DOWN:I = 0x119

.field public static final KEYCODE_SYSTEM_NAVIGATION_LEFT:I = 0x11a

.field public static final KEYCODE_SYSTEM_NAVIGATION_RIGHT:I = 0x11b

.field public static final KEYCODE_SYSTEM_NAVIGATION_UP:I = 0x118

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_THUMBS_DOWN:I = 0x11f

.field public static final KEYCODE_THUMBS_UP:I = 0x11e

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field private static final LAST_KEYCODE:I = 0x4d6

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mHmac:[B

.field private mId:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    const-string v0, "META_SHIFT_ON"

    const-string v1, "META_ALT_ON"

    const-string v2, "META_SYM_ON"

    const-string v3, "META_FUNCTION_ON"

    const-string v4, "META_ALT_LEFT_ON"

    const-string v5, "META_ALT_RIGHT_ON"

    const-string v6, "META_SHIFT_LEFT_ON"

    const-string v7, "META_SHIFT_RIGHT_ON"

    const-string v8, "META_CAP_LOCKED"

    const-string v9, "META_ALT_LOCKED"

    const-string v10, "META_SYM_LOCKED"

    const-string v11, "0x00000800"

    const-string v12, "META_CTRL_ON"

    const-string v13, "META_CTRL_LEFT_ON"

    const-string v14, "META_CTRL_RIGHT_ON"

    const-string v15, "0x00008000"

    const-string v16, "META_META_ON"

    const-string v17, "META_META_LEFT_ON"

    const-string v18, "META_META_RIGHT_ON"

    const-string v19, "0x00080000"

    const-string v20, "META_CAPS_LOCK_ON"

    const-string v21, "META_NUM_LOCK_ON"

    const-string v22, "META_SCROLL_LOCK_ON"

    const-string v23, "0x00800000"

    const-string v24, "0x01000000"

    const-string v25, "0x02000000"

    const-string v26, "0x04000000"

    const-string v27, "0x08000000"

    const-string v28, "0x10000000"

    const-string v29, "0x20000000"

    const-string v30, "0x40000000"

    const-string v31, "0x80000000"

    .line 1045
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3325
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1562
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1571
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1572
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1573
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1574
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    const/4 p1, 0x0

    .line 1575
    iput p1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 p1, -0x1

    .line 1576
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 1

    .line 1593
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1594
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1595
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1596
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1597
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1598
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1599
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 p1, -0x1

    .line 1600
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 1

    .line 1618
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1619
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1620
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1621
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1622
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1623
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1624
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1625
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 p1, -0x1

    .line 1626
    iput p1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1

    .line 1647
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1648
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1649
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1650
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1651
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1652
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1653
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1654
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1655
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1656
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 1

    .line 1678
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1679
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1680
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1681
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1682
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1683
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1684
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1685
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1686
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1687
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1688
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 1

    .line 1711
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1712
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1713
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1714
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1715
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1716
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1717
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1718
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1719
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1720
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1721
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1722
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    const/4 p1, -0x1

    .line 1723
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 1

    .line 1738
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1739
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1740
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1741
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1742
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    const/4 p1, 0x2

    .line 1743
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 p1, 0x0

    .line 1744
    iput p1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1745
    iput p1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1746
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1747
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    const/16 p1, 0x101

    .line 1748
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    const/4 p1, -0x1

    .line 1749
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3344
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 3346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3349
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 3350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3357
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 3359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1755
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1756
    iget v0, p1, Landroid/view/KeyEvent;->mId:I

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1757
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1758
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1759
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1760
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1761
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1762
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1763
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1764
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1765
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1766
    iget-object v0, p1, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 1767
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1768
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1769
    iget-object p1, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 1977
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1978
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1979
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1980
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1981
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1982
    iget p2, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1983
    iget p2, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1984
    iget p2, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1985
    iget p2, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1986
    iget p2, p1, Landroid/view/KeyEvent;->mSource:I

    iput p2, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1987
    iget p2, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    const/4 p2, 0x0

    .line 1988
    iput-object p2, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 1989
    iget p2, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1990
    iget p1, p1, Landroid/view/KeyEvent;->mFlags:I

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1785
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1786
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1787
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1788
    iget p2, p1, Landroid/view/KeyEvent;->mAction:I

    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1789
    iget p2, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1790
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1791
    iget p2, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1792
    iget p2, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1793
    iget p2, p1, Landroid/view/KeyEvent;->mSource:I

    iput p2, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1794
    iget p2, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput p2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    const/4 p2, 0x0

    .line 1795
    iput-object p2, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 1796
    iget p2, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1797
    iget p2, p1, Landroid/view/KeyEvent;->mFlags:I

    iput p2, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1798
    iget-object p1, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$076(Landroid/view/KeyEvent;I)I
    .locals 1

    .line 90
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return p1
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 3235
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTION_MULTIPLE"

    return-object p0

    :cond_1
    const-string p0, "ACTION_UP"

    return-object p0

    :cond_2
    const-string p0, "ACTION_DOWN"

    return-object p0
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1

    .line 2003
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1

    .line 2014
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2015
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result p0

    iput p0, v0, Landroid/view/KeyEvent;->mId:I

    .line 2016
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1

    .line 1947
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 1

    .line 1963
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1964
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result p0

    iput p0, v0, Landroid/view/KeyEvent;->mId:I

    .line 1965
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1966
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1967
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1

    .line 3341
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 0

    .line 1461
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p0

    return p0
.end method

.method public static getMaxKeyCode()I
    .locals 1

    const/16 v0, 0x4d6

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .locals 1

    const v0, 0x770ff

    return v0
.end method

.method public static final isAltKey(I)Z
    .locals 1

    const/16 v0, 0x39

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final isGamepadButton(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final isMediaSessionKey(I)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final isMetaKey(I)Z
    .locals 1

    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0x76

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isModifierKey(I)Z
    .locals 1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x75
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final isSystemKey(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xdc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x118
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final isWakeKey(I)Z
    .locals 1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .locals 2

    .line 3268
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3269
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    :cond_0
    const-string v0, "KEYCODE_"

    .line 3275
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 3276
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3278
    :cond_1
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result p0

    .line 3279
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static keyCodeIsValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x4d6

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .locals 2

    .line 3253
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYCODE_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 4

    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v3, p3, p4

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    not-int p1, v3

    :goto_2
    and-int/2addr p0, p1

    return p0

    .line 2533
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifiers must not contain "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2534
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " combined with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2535
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz v1, :cond_4

    not-int p1, p2

    goto :goto_2

    :cond_4
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 4

    const v0, 0x700f00

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 2513
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    const v0, 0x770ff

    and-int/2addr p0, v0

    const/16 v0, 0x40

    const/16 v1, 0x80

    const/4 v2, 0x1

    .line 2514
    invoke-static {p0, p1, v2, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/4 v0, 0x2

    const/16 v1, 0x10

    const/16 v3, 0x20

    .line 2516
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/16 v3, 0x4000

    .line 2518
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/high16 v0, 0x10000

    const/high16 v1, 0x20000

    const/high16 v3, 0x40000

    .line 2520
    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2507
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1

    .line 2470
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    const v0, 0x770ff

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v3, :cond_4

    .line 3309
    sget-object v3, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    return-object v3

    .line 3314
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    .line 3316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3317
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3322
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method private static native nativeNextId()I
.end method

.method public static normalizeMetaState(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x1

    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    or-int/lit16 p0, p0, 0x1000

    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    or-int/lit8 p0, p0, 0x2

    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    or-int/lit8 p0, p0, 0x4

    :cond_6
    const v0, 0x7770ff

    and-int/2addr p0, v0

    return p0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .locals 3

    .line 1803
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_0
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    if-nez v1, :cond_0

    .line 1806
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1808
    :cond_0
    iget-object v2, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v2, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1809
    sget v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 1810
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1811
    iput-object v0, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 1812
    invoke-virtual {v1}, Landroid/view/KeyEvent;->prepareForReuse()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 1810
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;
    .locals 3

    .line 1825
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    move v1, p0

    .line 1826
    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    move-wide v1, p1

    .line 1827
    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    move-wide v1, p3

    .line 1828
    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    move v1, p5

    .line 1829
    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    move v1, p6

    .line 1830
    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    move v1, p7

    .line 1831
    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    move v1, p8

    .line 1832
    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    move v1, p9

    .line 1833
    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    move v1, p10

    .line 1834
    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    move v1, p11

    .line 1835
    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    move v1, p12

    .line 1836
    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    move/from16 v1, p13

    .line 1837
    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    move-object/from16 v1, p14

    .line 1838
    iput-object v1, v0, Landroid/view/KeyEvent;->mHmac:[B

    move-object/from16 v1, p15

    .line 1839
    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    const-string v1, ""

    .line 1840
    iput-object v1, v0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    return-object v0
.end method

.method public static obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 16

    .line 1852
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    const/4 v14, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v15, p13

    invoke-static/range {v0 .. v15}, Landroid/view/KeyEvent;->obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 14

    const/4 v12, -0x1

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v13, p12

    .line 1865
    invoke-static/range {v0 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 3

    .line 1877
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 1878
    iget v1, p0, Landroid/view/KeyEvent;->mId:I

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 1879
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1880
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1881
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 1882
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1883
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1884
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1885
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1886
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1887
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 1888
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 1889
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1890
    iget-object v1, p0, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 1891
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1892
    iget-object p0, p0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    iput-object p0, v0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 2731
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .locals 1

    .line 1899
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3034
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 4

    .line 3050
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq v0, p2, :cond_0

    return p3

    .line 3081
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3082
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3083
    invoke-interface {p1, v2, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    if-eqz v2, :cond_3

    .line 3087
    iput p3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3088
    iput p3, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3089
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3091
    iput v1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3092
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3094
    :cond_2
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3095
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    :cond_3
    return p3

    :cond_4
    if-eqz p2, :cond_5

    .line 3077
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3079
    :cond_5
    iget p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, p2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3052
    :cond_6
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3055
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz p2, :cond_9

    if-eqz v0, :cond_7

    .line 3057
    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v2, :cond_7

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 3059
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 3060
    :cond_7
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 3062
    :try_start_0
    iget p3, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, p3, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3064
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_8
    move v1, v0

    :goto_0
    move v0, v1

    :catch_0
    :cond_9
    :goto_1
    return v0
.end method

.method public final getAction()I
    .locals 1

    .line 2713
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2784
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .line 2208
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getDisplayId()I
    .locals 1

    .line 2233
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public getDisplayLabel()C
    .locals 2

    .line 2903
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .line 2837
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .locals 2

    .line 2849
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 4

    .line 2868
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .line 2317
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1933
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .line 2893
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .locals 1

    .line 2769
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2965
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result p1

    return p1
.end method

.method public final getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2879
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .locals 1

    const/4 v0, 0x0

    .line 2980
    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    return p1
.end method

.method public getMatch([CI)C
    .locals 2

    .line 2993
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p1

    return p1
.end method

.method public final getMetaState()I
    .locals 1

    .line 2278
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .locals 2

    .line 2298
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .locals 2

    .line 3017
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .line 2808
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .locals 1

    .line 2795
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    .line 2221
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .locals 1

    .line 2926
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 2

    .line 2950
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    return p1
.end method

.method public final hasModifiers(I)Z
    .locals 1

    .line 2591
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p1

    return p1
.end method

.method public final hasNoModifiers()Z
    .locals 1

    .line 2560
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .locals 1

    .line 2604
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 2721
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCapsLockOn()Z
    .locals 2

    .line 2679
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCtrlPressed()Z
    .locals 1

    .line 2642
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2043
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFunctionPressed()Z
    .locals 1

    .line 2667
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLongPress()Z
    .locals 1

    .line 2759
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMetaPressed()Z
    .locals 2

    .line 2655
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNumLockOn()Z
    .locals 2

    .line 2691
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrintingKey()Z
    .locals 2

    .line 3026
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .locals 2

    .line 2703
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShiftPressed()Z
    .locals 2

    .line 2617
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isSymPressed()Z
    .locals 1

    .line 2629
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSystem()Z
    .locals 1

    .line 2049
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .line 2023
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTracking()Z
    .locals 1

    .line 2751
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWakeKey()Z
    .locals 1

    .line 2054
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 3

    .line 1912
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    const/4 v0, 0x0

    .line 1913
    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 1915
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1916
    :try_start_0
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1917
    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 1918
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v1, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 1919
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 1921
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final recycleIfNeededAfterDispatch()V
    .locals 0

    return-void
.end method

.method public final setDisplayId(I)V
    .locals 0

    .line 2240
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return-void
.end method

.method public final setFlags(I)V
    .locals 0

    .line 2308
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    .line 2227
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method public final setTainted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2029
    iget p1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/view/KeyEvent;->mFlags:I

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    :goto_0
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public final setTime(JJ)V
    .locals 0

    .line 2821
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2822
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-void
.end method

.method public final startTracking()V
    .locals 2

    .line 2742
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyEvent { action="

    .line 3198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    .line 3199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scanCode="

    .line 3200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3201
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", characters=\""

    .line 3202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", metaState="

    .line 3204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags=0x"

    .line 3205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatCount="

    .line 3206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTime="

    .line 3207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    .line 3208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    .line 3209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source=0x"

    .line 3210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    .line 3211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "areaType="

    .line 3212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 3213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    .line 3364
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3366
    iget p2, p0, Landroid/view/KeyEvent;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3367
    iget p2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3368
    iget p2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3369
    iget p2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3370
    iget-object p2, p0, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3371
    iget p2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3372
    iget p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3373
    iget p2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    iget p2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    iget p2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget p2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3378
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3379
    iget-object p2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3380
    iget-object p2, p0, Landroid/view/KeyEvent;->mAreaType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
