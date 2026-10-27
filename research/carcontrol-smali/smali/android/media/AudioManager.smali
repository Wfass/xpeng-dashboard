.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$AudioEventListenerToService;,
        Landroid/media/AudioManager$EventCallbackHandler;,
        Landroid/media/AudioManager$AudioCallBack;,
        Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;,
        Landroid/media/AudioManager$CommDevListenerInfo;,
        Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;,
        Landroid/media/AudioManager$VolumeGroupCallback;,
        Landroid/media/AudioManager$AudioServerStateCallback;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$AudioDeviceRole;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$DeviceVolumeBehaviorState;,
        Landroid/media/AudioManager$DeviceVolumeBehavior;,
        Landroid/media/AudioManager$RecordConfigChangeCallbackData;,
        Landroid/media/AudioManager$AudioRecordingCallbackInfo;,
        Landroid/media/AudioManager$AudioRecordingCallback;,
        Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;,
        Landroid/media/AudioManager$AudioPlaybackCallbackInfo;,
        Landroid/media/AudioManager$AudioPlaybackCallback;,
        Landroid/media/AudioManager$BlockingFocusResultReceiver;,
        Landroid/media/AudioManager$SafeWaitObject;,
        Landroid/media/AudioManager$FocusRequestResult;,
        Landroid/media/AudioManager$ServiceEventHandlerDelegate;,
        Landroid/media/AudioManager$FocusRequestInfo;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$SystemSoundEffect;,
        Landroid/media/AudioManager$AudioMode;,
        Landroid/media/AudioManager$ModeListenerInfo;,
        Landroid/media/AudioManager$ModeDispatcherStub;,
        Landroid/media/AudioManager$OnModeChangedListener;,
        Landroid/media/AudioManager$AudioOffloadMode;,
        Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;,
        Landroid/media/AudioManager$DevRoleListeners;,
        Landroid/media/AudioManager$DevRoleListenerInfo;,
        Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;,
        Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;,
        Landroid/media/AudioManager$PrefDevListenerInfo;,
        Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;,
        Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;,
        Landroid/media/AudioManager$PublicStreamTypes;,
        Landroid/media/AudioManager$Flags;,
        Landroid/media/AudioManager$EncodedSurroundOutputMode;,
        Landroid/media/AudioManager$VolumeAdjustment;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_MICROPHONE_MUTE_CHANGED:Ljava/lang/String; = "android.media.action.MICROPHONE_MUTE_CHANGED"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ACTION_SPEAKERPHONE_STATE_CHANGED:Ljava/lang/String; = "android.media.action.SPEAKERPHONE_STATE_CHANGED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_MUTE:I = -0x64

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final ADJUST_UNMUTE:I = 0x64

.field public static final ALL_MUTE:I = -0x1

.field public static final ALL_UNMUTE:I = 0x0

.field public static final AMP_CENTER:I = 0x5

.field public static final AMP_LEFT:I = 0x0

.field public static final AMP_LEFT_AND_RIGHT:I = 0x4

.field public static final AMP_LEFT_TO_RIGHT:I = 0x2

.field public static final AMP_RIGHT:I = 0x1

.field public static final AMP_RIGHT_TO_LEFT:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_FLAG_LOCK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_FLAG_TEST:I = 0x8

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final AUDIOFOCUS_REQUEST_WAITING_FOR_EXT_POLICY:I = 0x64

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_DSP_TYPE_21568:I = 0x1

.field public static final AUDIO_DSP_TYPE_21593:I = 0x2

.field public static final AUDIO_DSP_TYPE_7739:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final AvasOutputWhiteList:I = 0x2

.field public static final BTCALL_CALLING_OUT:I = 0x3

.field public static final BTCALL_CONNECTTED:I = 0x2

.field public static final BTCALL_NOT_CONNECTTED:I = 0x0

.field public static final BTCALL_RINGING:I = 0x1

.field public static final CLEAR_ACTIVEBITS_FLAG:I = 0x10018000

.field public static final DANGEROUS_SOUND_LEVEL_HIGH:I = 0x3

.field public static final DANGEROUS_SOUND_LEVEL_LOW:I = 0x1

.field public static final DANGEROUS_SOUND_LEVEL_MEDIUM:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_VOLUME_BEHAVIOR_ABSOLUTE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_VOLUME_BEHAVIOR_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_VOLUME_BEHAVIOR_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_VOLUME_BEHAVIOR_UNSET:I = -0x1

.field public static final DEVICE_VOLUME_BEHAVIOR_VARIABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENCODED_SURROUND_OUTPUT_ALWAYS:I = 0x2

.field public static final ENCODED_SURROUND_OUTPUT_AUTO:I = 0x0

.field public static final ENCODED_SURROUND_OUTPUT_MANUAL:I = 0x3

.field public static final ENCODED_SURROUND_OUTPUT_NEVER:I = 0x1

.field public static final ENCODED_SURROUND_OUTPUT_UNKNOWN:I = -0x1

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final EXT_FOCUS_POLICY_TIMEOUT_MS:I = 0xc8

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_FROM_KEY:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field private static final FLAG_NAMES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final FLAG_UNMUTE_RESET_DEFALUT_VOL:I = 0x40000000

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FLAG_XUI_FAKE_MUTE:I = -0x80000000

.field private static final FOCUS_CLIENT_ID_STRING:Ljava/lang/String; = "android_audio_focus_client_id"

.field public static final FORCE_CHANGEVOL_FLAG:I = 0x10008000

.field public static final FROM_MAIN_TO_PASSENGER:I = 0x1

.field public static final FROM_PASSENGER_TO_MAIN:I = 0x0

.field public static final FRONT_MUTE:I = 0x1

.field public static final FRONT_MUTE_FLAG:I = 0x10038000

.field public static final FX_AI_NOTIFY_COMING:I = 0x6a

.field public static final FX_AI_NOTIFY_WARNING:I = 0x6b

.field public static final FX_BACK:I = 0xa

.field public static final FX_CHARGE_PORT_OFF:I = 0x6d

.field public static final FX_CHARGE_PORT_ON:I = 0x6c

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_REPEAT_1:I = 0xc

.field public static final FX_FOCUS_NAVIGATION_REPEAT_2:I = 0xd

.field public static final FX_FOCUS_NAVIGATION_REPEAT_3:I = 0xe

.field public static final FX_FOCUS_NAVIGATION_REPEAT_4:I = 0xf

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_GEAR_D:I = 0x73

.field public static final FX_GEAR_P:I = 0x75

.field public static final FX_GEAR_R:I = 0x74

.field public static final FX_HOME:I = 0xb

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final FX_KEY_CLICK2:I = 0x69

.field public static final FX_READY:I = 0x6e

.field public static final FX_VIEW_CIRCULATION_FAIL:I = 0x68

.field public static final FX_VIEW_DELETE:I = 0x64

.field public static final FX_VIEW_SWITCH_OFF:I = 0x65

.field public static final FX_VIEW_SWITCH_ON:I = 0x66

.field public static final FX_VIEW_WHEEL_SCROLL:I = 0x67

.field public static final FX_WHEEL_BACK:I = 0x71

.field public static final FX_WHEEL_OK:I = 0x70

.field public static final FX_WHEEL_SCROLL:I = 0x6f

.field public static final FX_WHEEL_TIP:I = 0x72

.field public static final GET_DEVICES_ALL:I = 0x3

.field public static final GET_DEVICES_INPUTS:I = 0x1

.field public static final GET_DEVICES_OUTPUTS:I = 0x2

.field public static final HEAD_MUTE:I = 0x3

.field public static final HEAD_MUTE_FLAG:I = 0x10038002

.field public static final IG_OFFS_RESET_FLAG:I = 0x10028001

.field public static final IG_ON_RESET_FLAG:I = 0x10028000

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final IS_PLAYING_IN_AVAS:I = 0x2

.field public static final IS_PLAYING_IN_PASSENGER:I = 0x1

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MODE_CALL_SCREENING:I = 0x4

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final MSG_AUDIOCALLBACK_ERROR_EVENT:I = 0x0

.field private static final MSG_AUDIOCALLBACK_EVENT:I = 0x1

.field private static final MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field private static final MSSG_FOCUS_CHANGE:I = 0x0

.field private static final MSSG_PLAYBACK_CONFIG_CHANGE:I = 0x2

.field private static final MSSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field public static final MassageSeatWhiteList:I = 0x1

.field public static final NUM_NAVIGATION_REPEAT_SOUND_EFFECTS:I = 0x4

.field public static final NUM_SOUND_EFFECTS:I = 0x76

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAYBACK_OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final PLAYBACK_OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final PLAYBACK_OFFLOAD_SUPPORTED:I = 0x1

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED:Ljava/lang/String; = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

.field public static final PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field public static final PositionDriverAndPassenger:I = 0x2

.field public static final PositionInDriver:I = 0x0

.field public static final PositionInPassenger:I = 0x1

.field public static final REAR_MUTE:I = 0x2

.field public static final REAR_MUTE_FLAG:I = 0x10038001

.field public static final RECORDER_STATE_STARTED:I = 0x0

.field public static final RECORDER_STATE_STOPPED:I = 0x1

.field public static final RECORD_CONFIG_EVENT_NONE:I = -0x1

.field public static final RECORD_CONFIG_EVENT_RELEASE:I = 0x3

.field public static final RECORD_CONFIG_EVENT_START:I = 0x0

.field public static final RECORD_CONFIG_EVENT_STOP:I = 0x1

.field public static final RECORD_CONFIG_EVENT_UPDATE:I = 0x2

.field public static final RECORD_RIID_INVALID:I = -0x1

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final SOUND_DRIVING_MODE:I = 0x1

.field public static final SOUND_POSITION_ALL_ROUND:I = 0x10

.field public static final SOUND_POSITION_CENTER:I = 0x11

.field public static final SOUND_POSITION_FL_FR_RL:I = 0xc

.field public static final SOUND_POSITION_FL_FR_RR:I = 0xd

.field public static final SOUND_POSITION_FL_RL:I = 0x8

.field public static final SOUND_POSITION_FL_RL_RR:I = 0xe

.field public static final SOUND_POSITION_FL_RR:I = 0x9

.field public static final SOUND_POSITION_FRONT:I = 0x7

.field public static final SOUND_POSITION_FRONTLEFT:I = 0x1

.field public static final SOUND_POSITION_FRONTRIGHT:I = 0x2

.field public static final SOUND_POSITION_FRONT_ALL:I = 0x18

.field public static final SOUND_POSITION_FRONT_CENTER:I = 0x0

.field public static final SOUND_POSITION_FRONT_REAR:I = 0x5

.field public static final SOUND_POSITION_FR_RL:I = 0xa

.field public static final SOUND_POSITION_FR_RL_RR:I = 0xf

.field public static final SOUND_POSITION_FR_RR:I = 0xb

.field public static final SOUND_POSITION_HEAD:I = 0x17

.field public static final SOUND_POSITION_INVALID:I = -0x1

.field public static final SOUND_POSITION_REAR:I = 0x6

.field public static final SOUND_POSITION_REARLEFT:I = 0x3

.field public static final SOUND_POSITION_REARRIGHT:I = 0x4

.field public static final SOUND_POSITION_REAR_ALL:I = 0x19

.field public static final SOUND_POSITION_REAR_TOP_REAR:I = 0x1c

.field public static final SOUND_POSITION_RL_RTL:I = 0x1a

.field public static final SOUND_POSITION_RR_RTR:I = 0x1b

.field public static final SOUND_POSITION_SL:I = 0x15

.field public static final SOUND_POSITION_SR:I = 0x16

.field public static final SOUND_POSITION_TOP_ALL:I = 0x14

.field public static final SOUND_POSITION_TOP_FRONT:I = 0x12

.field public static final SOUND_POSITION_TOP_REAR:I = 0x13

.field public static final SOUND_PRIVATE_MODE:I = 0x2

.field public static final SOUND_SHARE_MODE:I = 0x0

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_ASSISTANT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STREAM_AVAS:I = 0xc

.field public static final STREAM_AVAS_SPEECH:I = 0x11

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_ICM:I = 0x63

.field public static final STREAM_MASSAGE_SEAT:I = 0xd

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_PASSENGERBT:I = 0xe

.field public static final STREAM_PATCH:I = 0x12

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SPEECH:I = 0xf

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM2:I = 0x10

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final StatusPlay:I = 0x1

.field public static final StatusStop:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioManager"

.field public static final TEMPVOLCHANGE_FLAG_AEB:I = 0x80

.field public static final TEMPVOLCHANGE_FLAG_BOOT:I = 0x40

.field public static final TEMPVOLCHANGE_FLAG_BTCALL:I = 0x4

.field public static final TEMPVOLCHANGE_FLAG_DANGERTTS:I = 0x8

.field public static final TEMPVOLCHANGE_FLAG_DOOR:I = 0x2

.field public static final TEMPVOLCHANGE_FLAG_GEAR:I = 0x1

.field public static final TEMPVOLCHANGE_FLAG_PARK:I = 0x400

.field public static final TEMPVOLCHANGE_FLAG_RADAR:I = 0x200

.field public static final TEMPVOLCHANGE_FLAG_USERSCENARIO:I = 0x100

.field public static final TEMPVOLCHANGE_FLAG_USERSCENARIO2:I = 0x800

.field public static final TEMPVOLCHANGE_FLAG_USERSCENARIO3:I = 0x1000

.field public static final TEMPVOLCHANGE_FLAG_XUIALARM:I = 0x10

.field public static final TEMPVOLCHANGE_FLAG_ZENMODE:I = 0x20

.field public static final TYPE_APPLYUSAGE:I = 0x4

.field public static final TYPE_BASESTART:I = 0x1

.field public static final TYPE_BASESTART_SYS:I = 0x2

.field public static final TYPE_BASESTART_XUI:I = 0x3

.field public static final TYPE_PAUSE:I = 0x6

.field public static final TYPE_RELEASE:I = 0x8

.field public static final TYPE_RELEASEUSAGE:I = 0x5

.field public static final TYPE_STOP:I = 0x7

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_ADJUST_MODE_CLASSIC:I = 0x1

.field public static final VOLUME_ADJUST_MODE_LOCK:I = 0x2

.field public static final VOLUME_ADJUST_MODE_XP:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final VOLUME_MIN_DB:F = -758.0f

.field public static final VOL_ADJUST_MODE_CUR_PLAYING:I = 0x0

.field public static final VOL_ADJUST_MODE_MEDIA_BT:I = 0x1

.field private static mkHandler:Landroid/os/Handler; = null

.field public static final newPolicyOpen:Z

.field public static final outPutToAvas:I = 0x10

.field public static final outPutToMedia:I = 0x1

.field public static final outPutToSystem:I = 0x100

.field private static final sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

.field static sAudioPatchesCached:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static sAudioPortGeneration:Ljava/lang/Integer; = null

.field static sAudioPortsCached:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field static sPreviousAudioPortsCached:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService; = null

.field public static final superCarSoundAvas:I = 0x1

.field public static final superCarSoundBoth:I = 0x2

.field public static final superCarSoundInside:I


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAudioCallBack:Landroid/media/AudioManager$AudioCallBack;

.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$FocusRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

.field private final mAudioServerStateCbLock:Ljava/lang/Object;

.field private final mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

.field private mAudioServerStateExec:Ljava/util/concurrent/Executor;

.field private mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

.field private final mCommDevListenerLock:Ljava/lang/Object;

.field private mCommDevListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$CommDevListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevRoleForCapturePresetListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

.field private final mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRoleListenersStatus:I

.field private mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

.field private mFocusRequestsAwaitingResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$BlockingFocusResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusRequestsLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/media/AudioManager$AudioCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

.field private final mModeListenerLock:Ljava/lang/Object;

.field private mModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$ModeListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalContext:Landroid/content/Context;

.field private final mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

.field private mPlaybackCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioPlaybackCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaybackCallbackLock:Ljava/lang/Object;

.field private mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

.field private final mPrefDevListenerLock:Ljava/lang/Object;

.field private mPrefDevListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$PrefDevListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecCb:Landroid/media/IRecordingConfigDispatcher;

.field private mRecordCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordCallbackLock:Ljava/lang/Object;

.field private final mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field private mUseFixedVolume:Z

.field private mUseFixedVolumeInitialized:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 109
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    const-string v0, "persist.xiaopeng.audio.newpolicy.open"

    const/4 v1, 0x1

    .line 115
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioManager;->newPolicyOpen:Z

    .line 744
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    .line 784
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_UI"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_ALLOW_RINGER_MODES"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_PLAY_SOUND"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 787
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 788
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_VIBRATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 789
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_FIXED_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 790
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_BLUETOOTH_ABS_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x80

    .line 791
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_SILENT_HINT"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    .line 792
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x200

    .line 793
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_ACTIVE_MEDIA_ONLY"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x400

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_UI_WARNINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x800

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOW_VIBRATE_HINT"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1000

    .line 796
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_FROM_KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6981
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 6982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 6983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 6984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    .line 2419
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2467
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2472
    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3031
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mModeListenerLock:Ljava/lang/Object;

    .line 4153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4165
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 4241
    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5564
    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 5747
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 5778
    new-instance v0, Landroid/media/AudioManager$4;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 5834
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 7115
    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 7128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 7460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7550
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 7552
    new-instance v0, Landroid/media/AudioManager$5;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 8319
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCommDevListenerLock:Ljava/lang/Object;

    .line 9587
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mListeners:Landroid/util/ArraySet;

    .line 9588
    iput-object v1, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    .line 2419
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2467
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2472
    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3031
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mModeListenerLock:Ljava/lang/Object;

    .line 4153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4165
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 4241
    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5564
    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 5747
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 5778
    new-instance v0, Landroid/media/AudioManager$4;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 5834
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 7115
    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 7128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 7460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7550
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 7552
    new-instance v0, Landroid/media/AudioManager$5;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 8319
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCommDevListenerLock:Ljava/lang/Object;

    .line 9587
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mListeners:Landroid/util/ArraySet;

    .line 9588
    iput-object v1, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    .line 930
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mModeListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Landroid/media/AudioManager;)Ljava/util/HashMap;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Landroid/media/AudioManager;)Landroid/util/ArrayMap;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2600(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$2700(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    return-object p0
.end method

.method static synthetic access$2900(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mCommDevListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3000(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3100(Landroid/media/AudioManager;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioManager;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager;->dispatchEventToClient(II)V

    return-void
.end method

.method static synthetic access$3300(Landroid/media/AudioManager;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioManager;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager;->handleEvent(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioManager;)Ljava/util/Map;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    return-object p0
.end method

.method private addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7391
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 7392
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7393
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7396
    :cond_0
    invoke-static {v3}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v3

    .line 7397
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;I)I"
        }
    .end annotation

    .line 2345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2352
    :cond_0
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$300(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2353
    :try_start_0
    invoke-static {v0, p2}, Landroid/media/AudioManager$DevRoleListeners;->access$400(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, -0x2

    .line 2354
    monitor-exit v1

    return p1

    .line 2357
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/media/AudioManager$DevRoleListeners;->access$502(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2360
    :cond_2
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2361
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/media/AudioManager$DevRoleListenerInfo;

    invoke-direct {v4, p0, p1, p2}, Landroid/media/AudioManager$DevRoleListenerInfo;-><init>(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    if-nez v2, :cond_5

    .line 2362
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 2364
    iget-object p2, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2365
    :try_start_1
    iget v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    const/4 v2, 0x1

    shl-int p3, v2, p3

    or-int/2addr p3, v0

    .line 2366
    iput p3, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    if-eqz v0, :cond_3

    .line 2369
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    .line 2371
    :cond_3
    :try_start_3
    iget-object p3, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    if-nez p3, :cond_4

    .line 2372
    new-instance p3, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V

    iput-object p3, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2376
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p3

    iget-object v0, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {p3, v0}, Landroid/media/IAudioService;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2381
    :try_start_5
    monitor-exit p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2379
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 2381
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 2383
    :cond_5
    :goto_0
    monitor-exit v1

    return p1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public static final adjustToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x64

    if-eq p0, v0, :cond_5

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown adjust mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ADJUST_TOGGLE_MUTE"

    return-object p0

    :cond_1
    const-string p0, "ADJUST_UNMUTE"

    return-object p0

    :cond_2
    const-string p0, "ADJUST_RAISE"

    return-object p0

    :cond_3
    const-string p0, "ADJUST_SAME"

    return-object p0

    :cond_4
    const-string p0, "ADJUST_LOWER"

    return-object p0

    :cond_5
    const-string p0, "ADJUST_MUTE"

    return-object p0
.end method

.method public static audioFocusToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 4056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FOCUS_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    :pswitch_1
    const-string p0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    :pswitch_2
    const-string p0, "AUDIOFOCUS_GAIN_TRANSIENT"

    return-object p0

    :pswitch_3
    const-string p0, "AUDIOFOCUS_GAIN"

    return-object p0

    :pswitch_4
    const-string p0, "AUDIOFOCUS_NONE"

    return-object p0

    :pswitch_5
    const-string p0, "AUDIOFOCUS_LOSS"

    return-object p0

    :pswitch_6
    const-string p0, "AUDIOFOCUS_LOSS_TRANSIENT"

    return-object p0

    :pswitch_7
    const-string p0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private broadcastDeviceListChange_sync(Landroid/os/Handler;)V
    .locals 5

    .line 7470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7471
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 7479
    invoke-static {v0, v2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 7481
    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7480
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 7483
    :cond_1
    iget-object p1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7484
    invoke-static {p1, v0, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    .line 7485
    iget-object v3, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7486
    invoke-static {v0, v3, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 7487
    array-length v3, p1

    if-nez v3, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_5

    .line 7488
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 7489
    iget-object v3, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-virtual {v3}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7491
    array-length v4, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    .line 7492
    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7496
    :cond_3
    array-length v4, p1

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 7497
    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7506
    :cond_5
    :goto_1
    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    return-void
.end method

.method private static calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 7229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 7232
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    move v4, v1

    move v5, v4

    .line 7236
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    if-nez v5, :cond_1

    .line 7238
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->id()I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->id()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    move v5, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    .line 7242
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7246
    :cond_3
    invoke-static {v0, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static checkFlags(Landroid/media/AudioDevicePort;I)Z
    .locals 3

    .line 7168
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 7169
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result p0

    if-ne p0, v2, :cond_1

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static checkTypes(Landroid/media/AudioDevicePort;)Z
    .locals 0

    .line 7173
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .locals 0

    .line 6888
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result p0

    return p0
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 9678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchErrorEventToClient  errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9679
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioCallBack:Landroid/media/AudioManager$AudioCallBack;

    if-eqz v0, :cond_0

    .line 9680
    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$AudioCallBack;->onErrorEvent(II)V

    :cond_0
    return-void
.end method

.method private dispatchEventToClient(II)V
    .locals 2

    .line 9695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToClient  event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9696
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioCallBack:Landroid/media/AudioManager$AudioCallBack;

    if-eqz v0, :cond_0

    .line 9697
    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$AudioCallBack;->AudioServiceCallBack(II)V

    :cond_0
    return-void
.end method

.method public static enforceValidVolumeBehavior(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 6286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal volume behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 6853
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 6854
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6855
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/AudioDevicePort;

    if-eqz v1, :cond_0

    .line 6856
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .locals 1

    .line 4158
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager$FocusRequestInfo;

    return-object p1
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 6

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2c

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int v5, p0, v4

    if-eqz v5, :cond_0

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 806
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v4

    and-int/2addr p0, v2

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioProductStrategies()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 7769
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7771
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7773
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getAudioVolumeGroups()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 7789
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7791
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7793
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getCommDevListenerInfo(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Landroid/media/AudioManager$CommDevListenerInfo;
    .locals 4

    .line 8369
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 8372
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$CommDevListenerInfo;

    .line 8373
    iget-object v3, v2, Landroid/media/AudioManager$CommDevListenerInfo;->mListener:Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 934
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 937
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    return-object v0

    .line 940
    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7286
    :cond_0
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    .line 7287
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 7288
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDeviceInfoFromType(I)Landroid/media/AudioDeviceInfo;
    .locals 1

    const/4 v0, 0x0

    .line 8203
    invoke-static {p0, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;
    .locals 6

    const/4 v0, 0x2

    .line 8226
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 8228
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 8229
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, p0, :cond_2

    if-eqz p1, :cond_1

    .line 8231
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 7262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7263
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/media/AudioDeviceInfo;

    return-object p0

    .line 7269
    :cond_0
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 4276
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4278
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getModeListenerInfo(Landroid/media/AudioManager$OnModeChangedListener;)Landroid/media/AudioManager$ModeListenerInfo;
    .locals 4

    .line 3085
    iget-object v0, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3088
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$ModeListenerInfo;

    .line 3089
    iget-object v3, v2, Landroid/media/AudioManager$ModeListenerInfo;->mListener:Landroid/media/AudioManager$OnModeChangedListener;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static getNthNavigationRepeatSoundEffect(I)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 3853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid navigation repeat sound effect id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/16 p0, 0xe

    return p0

    :cond_2
    const/16 p0, 0xd

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0
.end method

.method public static getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 1

    const-string v0, "Illegal null AudioFormat"

    .line 2587
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Illegal null AudioAttributes"

    .line 2590
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2592
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;
    .locals 4

    .line 2146
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2149
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$PrefDevListenerInfo;

    .line 2150
    iget-object v3, v2, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method static getService()Landroid/media/IAudioService;
    .locals 1

    .line 956
    sget-object v0, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "audio"

    .line 959
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 960
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    sput-object v0, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 9711
    sget-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 9712
    new-instance v0, Landroid/media/AudioManager$EventCallbackHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$EventCallbackHandler;-><init>(Landroid/media/AudioManager;Landroid/os/Looper;)V

    sput-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    .line 9713
    :cond_0
    sget-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 9714
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9715
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9716
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 9717
    sget-object p1, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleEvent(II)V
    .locals 2

    .line 9721
    sget-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 9722
    new-instance v0, Landroid/media/AudioManager$EventCallbackHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$EventCallbackHandler;-><init>(Landroid/media/AudioManager;Landroid/os/Looper;)V

    sput-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    .line 9723
    :cond_0
    sget-object v0, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 9724
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9726
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 9727
    sget-object p1, Landroid/media/AudioManager;->mkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static hasAmp()Z
    .locals 1

    .line 9510
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9512
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->hasAmpOrEquivalentDsp()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9514
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private hasCommDevListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Z
    .locals 0

    .line 8382
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getCommDevListenerInfo(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Landroid/media/AudioManager$CommDevListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 7872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 7875
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 7878
    :cond_0
    sget-object p0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_1

    .line 7883
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 7891
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/media/IAudioService;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7893
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const-string v0, "haptic-channel-count"

    .line 7847
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7849
    :try_start_0
    invoke-virtual {v1, p0, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    move p0, v3

    .line 7850
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    .line 7851
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    .line 7852
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7853
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasHapticChannels failure:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private hasModeListener(Landroid/media/AudioManager$OnModeChangedListener;)Z
    .locals 0

    .line 3079
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getModeListenerInfo(Landroid/media/AudioManager$OnModeChangedListener;)Landroid/media/AudioManager$ModeListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .locals 3

    .line 5539
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 5540
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5541
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v2, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasPrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z
    .locals 0

    .line 2159
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 3

    .line 5753
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 5754
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5755
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v2, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 7200
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 7201
    invoke-static {v3}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7207
    :cond_1
    new-array v0, v2, [Landroid/media/AudioDeviceInfo;

    .line 7209
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 7210
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 7211
    new-instance v4, Landroid/media/AudioDeviceInfo;

    invoke-direct {v4, v2}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static isHapticPlaybackSupported()Z
    .locals 1

    .line 7749
    invoke-static {}, Landroid/media/AudioSystem;->isHapticPlaybackSupported()Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .locals 1

    const-string v0, "Illegal null AudioFormat"

    .line 2539
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Illegal null AudioAttributes"

    .line 2542
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2544
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOutputDevice(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPublicStreamType(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidRingerMode(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 1177
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1179
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1181
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static listAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    .line 6826
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6827
    invoke-static {v0, v1, v1}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_1

    .line 6829
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public static listAudioPatches(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6914
    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static listAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6804
    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    .line 6843
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6844
    invoke-static {v1, v1, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_1

    .line 6846
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public static listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6814
    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;
    .locals 16

    .line 7369
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v5, v0

    .line 7374
    new-instance v0, Landroid/media/MicrophoneInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7375
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7376
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-object v8, Landroid/media/MicrophoneInfo;->POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    sget-object v9, Landroid/media/MicrophoneInfo;->ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const v12, -0x800001

    const v13, -0x800001

    const v14, -0x800001

    const/4 v15, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v15}, Landroid/media/MicrophoneInfo;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo$Coordinate3F;Landroid/media/MicrophoneInfo$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V

    .line 7382
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MicrophoneInfo;->setId(I)V

    return-object v0
.end method

.method private querySoundEffectsEnabled(I)Z
    .locals 3

    .line 4003
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method static registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 9

    if-eqz p0, :cond_2

    .line 5320
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5322
    :try_start_0
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    .line 5323
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 5324
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v4

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isFocusPolicy()Z

    move-result v5

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isTestFocusPolicy()Z

    move-result v6

    .line 5325
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isVolumeController()Z

    move-result v7

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5326
    :cond_0
    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v1

    :goto_0
    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    .line 5323
    invoke-interface/range {v0 .. v7}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 5330
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 5334
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 5318
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioPolicy argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static releaseAudioPatch(Landroid/media/AudioPatch;)I
    .locals 0

    .line 6904
    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result p0

    return p0
.end method

.method private removeCommDevListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Z
    .locals 1

    .line 8390
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getCommDevListenerInfo(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Landroid/media/AudioManager$CommDevListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8392
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeModeListener(Landroid/media/AudioManager$OnModeChangedListener;)Z
    .locals 1

    .line 3102
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getModeListenerInfo(Landroid/media/AudioManager$OnModeChangedListener;)Landroid/media/AudioManager$ModeListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3104
    iget-object v0, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)I"
        }
    .end annotation

    .line 2389
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2391
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2395
    :cond_0
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$300(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2396
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/AudioManager$DevRoleListeners;->access$700(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x2

    .line 2397
    monitor-exit v1

    return p1

    .line 2399
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->access$500(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 2401
    iget-object p1, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2402
    :try_start_1
    iget v2, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    const/4 v3, 0x1

    shl-int p2, v3, p2

    xor-int/2addr p2, v2

    iput p2, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    if-eqz p2, :cond_2

    .line 2405
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 2408
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p2

    iget-object v2, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {p2, v2}, Landroid/media/IAudioService;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2413
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2411
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    :catchall_0
    move-exception p2

    .line 2413
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2

    .line 2415
    :cond_3
    :goto_0
    monitor-exit v1

    return v0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .locals 3

    .line 5553
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 5554
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5555
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v2, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5556
    iget-object p1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private removePrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z
    .locals 1

    .line 2167
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2169
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 3

    .line 5767
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 5768
    :goto_0
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5769
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v2, v2, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5770
    iget-object p1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static resetAudioPortGeneration()I
    .locals 3

    .line 6988
    sget-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v0

    .line 6989
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 6990
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 6991
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .locals 8

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6926
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    .line 6927
    new-instance v7, Landroid/media/AudioPortConfig;

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    .line 6928
    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->format()I

    move-result v5

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    const/16 p0, 0x8

    .line 6929
    iput p0, v7, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 6930
    invoke-static {v7}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x2

    return p0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1

    .line 944
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 946
    iput-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    .line 948
    :cond_0
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    .line 950
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setPortIdForMicrophones(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7344
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 7345
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 7347
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 7348
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->type()I

    move-result v7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MicrophoneInfo;

    invoke-virtual {v8}, Landroid/media/MicrophoneInfo;->getInternalDeviceType()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 7349
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MicrophoneInfo;

    invoke-virtual {v8}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7350
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MicrophoneInfo;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setId(I)V

    move v4, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 7356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find port id for device with type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7357
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7358
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    .line 7356
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7359
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private setPreferredDevicesForCapturePreset(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 2243
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2247
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2251
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2252
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2256
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :catch_0
    move-exception p1

    .line 2259
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2248
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only support setting one preferred devices for capture preset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setRttEnabled(Z)V
    .locals 1

    .line 7905
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRttEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7907
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 5354
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5356
    :try_start_0
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5357
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5359
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 5352
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioPolicy argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 6997
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 6998
    sget-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v0

    .line 7000
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    new-array v3, v1, [I

    new-array v4, v1, [I

    .line 7004
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7005
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7008
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7009
    invoke-static {v5, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v7

    if-eqz v7, :cond_1

    const-string p0, "AudioManager"

    const-string/jumbo p1, "updateAudioPortCache: listAudioPorts failed"

    .line 7011
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    monitor-exit v0

    return v7

    .line 7014
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7015
    invoke-static {v6, v3}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v7

    if-eqz v7, :cond_2

    const-string p0, "AudioManager"

    const-string/jumbo p1, "updateAudioPortCache: listAudioPatches failed"

    .line 7017
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7018
    monitor-exit v0

    return v7

    .line 7022
    :cond_2
    aget v7, v3, v2

    aget v8, v4, v2

    if-eq v7, v8, :cond_3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7026
    :cond_3
    aget v3, v3, v2

    aget v7, v4, v2

    if-eq v3, v7, :cond_4

    const/4 p0, -0x1

    .line 7027
    monitor-exit v0

    return p0

    :cond_4
    move v3, v2

    .line 7030
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    move v7, v2

    .line 7031
    :goto_1
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 7032
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8, v5}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 7034
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioPatch;

    invoke-virtual {v9}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v9

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move v7, v2

    .line 7036
    :goto_2
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_6

    .line 7037
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPatch;

    invoke-virtual {v8}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8, v5}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v8

    .line 7039
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioPatch;

    invoke-virtual {v9}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v9

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7042
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 7043
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPatch;

    .line 7045
    invoke-virtual {v7}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v8

    array-length v9, v8

    move v10, v2

    :goto_4
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    if-nez v11, :cond_9

    move v8, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    move v8, v2

    .line 7051
    :goto_5
    invoke-virtual {v7}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v7

    array-length v9, v7

    move v10, v2

    :goto_6
    if-ge v10, v9, :cond_c

    aget-object v11, v7, v10

    if-nez v11, :cond_b

    move v8, v1

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    if-eqz v8, :cond_8

    .line 7060
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 7064
    :cond_d
    sget-object v1, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    sput-object v1, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 7065
    sput-object v5, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 7066
    sput-object v6, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 7067
    aget v1, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    :cond_e
    if-eqz p0, :cond_f

    .line 7070
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 7071
    sget-object v1, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_f
    if-eqz p1, :cond_10

    .line 7074
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7075
    sget-object p0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    if-eqz p2, :cond_11

    .line 7078
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 7079
    sget-object p0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7081
    :cond_11
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .line 7086
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v0

    const/4 v1, 0x0

    .line 7088
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7091
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPort;

    invoke-virtual {v2}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7092
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPort;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7096
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v1, p1, :cond_2

    .line 7098
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updatePortConfig port not found for handle: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioHandle;->id()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 7101
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7103
    invoke-virtual {p1}, Landroid/media/AudioGainConfig;->index()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v1

    .line 7104
    invoke-virtual {p1}, Landroid/media/AudioGainConfig;->mode()I

    move-result v2

    .line 7105
    invoke-virtual {p1}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v3

    .line 7106
    invoke-virtual {p1}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v4

    .line 7107
    invoke-virtual {p1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result p1

    .line 7104
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object p1

    .line 7109
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v1

    .line 7110
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v2

    .line 7111
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result p0

    .line 7109
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method ChangeChannelByTrack(IIZ)V
    .locals 1

    .line 9239
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9241
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->ChangeChannelByTrack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9243
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    const/4 v0, 0x0

    .line 5088
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result p1

    return p1
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5104
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 5105
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5107
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 5108
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5107
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5110
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public abandonAudioFocusForCall()V
    .locals 4

    .line 5072
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 5075
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 5074
    invoke-interface {v0, v3, v1, v3, v2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5077
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public abandonAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;)I
    .locals 3

    .line 4703
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4704
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4706
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4707
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    const-string v2, "com.android.test.fakeclient"

    .line 4706
    invoke-interface {v0, v1, p2, p1, v2}, Landroid/media/IAudioService;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4709
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4473
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 4474
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 4473
    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result p1

    return p1

    .line 4471
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioFocusRequest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 4

    .line 8262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8263
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8264
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8265
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->hasCommDevListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8271
    iget-object v1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 8272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    .line 8274
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8275
    iget-object v2, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioManager$CommDevListenerInfo;

    invoke-direct {v3, p2, p1}, Landroid/media/AudioManager$CommDevListenerInfo;-><init>(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    .line 8276
    iget-object p1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8278
    iget-object p1, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    if-nez p1, :cond_1

    .line 8279
    new-instance p1, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V

    iput-object p1, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8282
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object p2, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    invoke-interface {p1, p2}, Landroid/media/IAudioService;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8284
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8287
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 8266
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to call addOnCommunicationDeviceChangedListener() on a previously registered listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 8287
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    .locals 4

    .line 3119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    iget-object v0, p0, Landroid/media/AudioManager;->mModeListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3122
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->hasModeListener(Landroid/media/AudioManager$OnModeChangedListener;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3127
    iget-object v1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    .line 3130
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3131
    iget-object v2, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioManager$ModeListenerInfo;

    invoke-direct {v3, p2, p1}, Landroid/media/AudioManager$ModeListenerInfo;-><init>(Landroid/media/AudioManager$OnModeChangedListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    .line 3134
    iget-object p1, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

    if-nez p1, :cond_1

    .line 3135
    new-instance p1, Landroid/media/AudioManager$ModeDispatcherStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/AudioManager$ModeDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V

    iput-object p1, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3138
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object p2, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

    invoke-interface {p1, p2}, Landroid/media/IAudioService;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3140
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3143
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 3123
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to call addOnModeChangedListener() on a previously registered listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 3143
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addOnPreferredDeviceForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addOnPreferredDevicesForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2304
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2306
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioManager;->addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 2313
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to call addOnPreferredDevicesForCapturePresetChangedListener() on a previously registered listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2310
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown error happened"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnPreferredDevicesForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2035
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->hasPrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2044
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2045
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    .line 2047
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2048
    iget-object v2, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioManager$PrefDevListenerInfo;

    invoke-direct {v3, p2, p1}, Landroid/media/AudioManager$PrefDevListenerInfo;-><init>(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    .line 2049
    iget-object p1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 2051
    iget-object p1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    if-nez p1, :cond_1

    .line 2052
    new-instance p1, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V

    iput-object p1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object p2, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    invoke-interface {p1, p2}, Landroid/media/IAudioService;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2057
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2060
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 2039
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to call addOnPreferredDevicesForStrategyChangedListener() on a previously registered listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2060
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public adjustMediaVolume(III)V
    .locals 1

    .line 9435
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9437
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->adjustMediaVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public adjustStreamVolume(III)V
    .locals 2

    .line 1069
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1072
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1074
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7991
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 7992
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 7991
    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7994
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 1

    .line 1131
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1132
    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7948
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 7949
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 7948
    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7951
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public adjustVolume(II)V
    .locals 2

    .line 1102
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 1103
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    return-void
.end method

.method public areNavigationRepeatSoundEffectsEnabled()Z
    .locals 1

    .line 3875
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3877
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 1

    .line 5823
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5825
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5827
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public changeAudioFocusPosition(Landroid/media/AudioManager$OnAudioFocusChangeListener;I)V
    .locals 3

    .line 4885
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object p1

    .line 4886
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4888
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4889
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->changeAudioFocusPosition(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "AudioManager"

    .line 4891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAudioFocusPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4893
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public checkAlarmVolume()V
    .locals 1

    .line 8874
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8876
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->checkAlarmVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8878
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public checkPlayingRouteByPackage(ILjava/lang/String;)Z
    .locals 1

    .line 9408
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9410
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->checkPlayingRouteByPackage(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9412
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkStreamActive(I)Z
    .locals 1

    .line 3364
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3366
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->checkStreamActive(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3368
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkStreamCanPlay(I)I
    .locals 1

    .line 3428
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3430
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->checkStreamCanPlay(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3432
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public clearAudioServerStateCallback()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7615
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7616
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-eqz v1, :cond_0

    .line 7617
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7619
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7622
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 7625
    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 7626
    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7627
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearCommunicationDevice()V
    .locals 3

    .line 8135
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8137
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public clearPreferredDevicesForCapturePreset(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2207
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2211
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->clearPreferredDevicesForCapturePreset(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 2214
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public disableSafeMediaVolume()V
    .locals 2

    .line 6690
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6692
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disableSystemSound()V
    .locals 1

    .line 8666
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8668
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->disableSystemSound()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8670
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "Illegal null AudioFocusInfo"

    .line 5051
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Illegal null AudioPolicy"

    .line 5054
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5056
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5058
    :try_start_0
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5060
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 988
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 989
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public doZenVolumeProcess(Z)V
    .locals 2

    .line 9088
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9090
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->doZenVolumeProcess(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9092
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public enableAIAtmos(Z)V
    .locals 1

    .line 9556
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9558
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->enableAIAtmos(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9560
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public enableSmartSoundEffect(Z)V
    .locals 1

    .line 9519
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9521
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->enableSmartSoundEffect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9523
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public enableSystemSound()V
    .locals 1

    .line 8653
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8655
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->enableSystemSound()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8657
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public flushXpCustomizeEffects([I)V
    .locals 1

    .line 8617
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8619
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->flushXpCustomizeEffects([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8621
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public focusStackMove(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 9501
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9503
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->focusStackMove(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9505
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public forceChangeToAmpChannel(IIIZ)V
    .locals 1

    .line 9131
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9133
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->forceChangeToAmpChannel(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9135
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public forceVolumeControlStream(I)V
    .locals 2

    .line 1633
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1635
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1637
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public generateAudioSessionId()I
    .locals 2

    .line 3526
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const-string v0, "AudioManager"

    const-string v1, "Failure to generate a new audio session ID"

    .line 3530
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 5518
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5520
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5522
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 5708
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5710
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5712
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6591
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6593
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 6595
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getAdjustVolumeMode()I
    .locals 1

    .line 9457
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9459
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAdjustVolumeMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9461
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAllowedCapturePolicy()I
    .locals 3

    .line 1802
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getAllowedCapturePolicy()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query allowed capture policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getAmpFreeSoundFieldCoordinate()[I
    .locals 1

    .line 9546
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9548
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAmpFreeSoundFieldCoordinate()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9550
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAudioFocusPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4508
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4510
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioFocusPackageNameList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4512
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAudioFocusPackageNameListByPosition(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4521
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4523
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getAudioFocusPackageNameListByPosition(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4525
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getAudioHwSyncForSession(I)I
    .locals 1

    .line 8059
    invoke-static {p1}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 8061
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "HW A/V synchronization is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAvailableCommunicationDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 8171
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8172
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getAvailableCommunicationDeviceIds()[I

    move-result-object v1

    .line 8173
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    const/4 v5, 0x2

    .line 8174
    invoke-static {v4, v5}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 8178
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 8182
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAvasMediaEnable()Z
    .locals 1

    .line 8640
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8642
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAvasMediaEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8644
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBanVolumeChangeMode(I)I
    .locals 1

    .line 9179
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9181
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getBanVolumeChangeMode(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9183
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getBtCallMode()I
    .locals 1

    .line 8948
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8950
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getBtCallMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8952
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBtCallOnFlag()I
    .locals 1

    .line 8922
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8924
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getBtCallOnFlag()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8926
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 8157
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getCommunicationDevice()I

    move-result v0

    const/4 v1, 0x2

    .line 8156
    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8159
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCurrentAudioFocusAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 3501
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3503
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocusAttributes()Landroid/media/AudioAttributes;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3505
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    .line 4482
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4484
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4486
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCurrentAudioFocusPid()I
    .locals 1

    .line 4495
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4497
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocusPid()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4499
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDangerousSoundEffectVolLevel()I
    .locals 1

    .line 9475
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9477
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getDangerousSoundEffectVolLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9479
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDangerousTtsStatus()I
    .locals 1

    .line 9203
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9205
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getDangerousTtsStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9207
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDangerousTtsVolLevel()I
    .locals 1

    .line 9227
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9229
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getDangerousTtsVolLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9231
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6334
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6336
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6338
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDevices(I)[Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 7188
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 6189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6190
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6192
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6194
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDevicesForStream(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 6155
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevicesForStream  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6164
    :pswitch_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6166
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForStream(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6168
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDyn3dEffectLevel()I
    .locals 1

    .line 8572
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8574
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getDyn3dEffectLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8576
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getEncodedSurroundMode()I
    .locals 2

    .line 7666
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7667
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7666
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getEncodedSurroundMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7669
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 2

    .line 4724
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4726
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 4728
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1

    .line 4991
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4993
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4995
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getHwOffloadEncodingFormatsSupportedForA2DP()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 7438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7441
    invoke-static {v0}, Landroid/media/AudioSystem;->getHwOffloadEncodingFormatsSupportedForA2DP(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 7443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHwOffloadEncodingFormatsSupportedForA2DP failed:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7447
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 7448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioSystem;->audioFormatToBluetoothSourceCodec(I)I

    move-result v2

    const v3, 0xf4240

    if-eq v2, v3, :cond_1

    .line 7451
    new-instance v3, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-direct {v3, v2}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 1

    .line 1331
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1333
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1335
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getLastAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    .line 4534
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4536
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getLastAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4538
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getMainDriverMode()I
    .locals 1

    .line 8783
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8785
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMainDriverMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8787
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6612
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6614
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 6617
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "attr must not be null"

    .line 1468
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1471
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1473
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMediaStreamTypeByScreen(I)I
    .locals 2

    .line 9426
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9428
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->getMediaStreamTypeByScreen(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9430
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMicrophones()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7411
    invoke-static {v0}, Landroid/media/AudioSystem;->getMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 7412
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x12

    .line 7413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    const/4 v3, -0x3

    const-string v4, "AudioManager"

    if-eq v1, v3, :cond_0

    .line 7417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMicrophones failed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "fallback on device info"

    .line 7419
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7420
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-object v0

    .line 7423
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    const/16 v1, 0xf

    .line 7424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7425
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "attr must not be null"

    .line 1489
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1492
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1494
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMmapToAvasEnable()Z
    .locals 1

    .line 9342
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9344
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMmapToAvasEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9346
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getMode()I
    .locals 3

    .line 3000
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3002
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3005
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3008
    :catch_0
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0

    :catch_1
    move-exception v0

    .line 3015
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getMusicSeatEffect()I
    .locals 1

    .line 9324
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9326
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMusicSeatEffect()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9328
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getMusicSeatEnable()Z
    .locals 1

    .line 9297
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9299
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMusicSeatEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9301
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getNavVolDecreaseEnable()Z
    .locals 1

    .line 8590
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8592
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getNavVolDecreaseEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8594
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getOtherMusicPlayingPkgs()Ljava/lang/String;
    .locals 1

    .line 9009
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9011
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getOtherMusicPlayingPkgs()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9013
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getOutputLatency(I)I
    .locals 0

    .line 6630
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result p1

    return p1
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3582
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPartialMute()I
    .locals 1

    .line 9417
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9419
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getPartialMute()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9421
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Landroid/media/AudioDeviceAttributes;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1867
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;

    move-result-object p1

    .line 1868
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    :goto_0
    return-object p1
.end method

.method public getPreferredDevicesForCapturePreset(I)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2230
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2231
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2234
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 1920
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1924
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 6523
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6524
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result p1

    if-lez p1, :cond_0

    .line 6525
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 6526
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6527
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 6528
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    .line 6529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6532
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110149

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    .line 6534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6535
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111014b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

    .line 6537
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6538
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110144

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public getReportedSurroundFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7737
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7739
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRingerMode()I
    .locals 1

    .line 1156
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1158
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeExternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1160
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 1

    .line 6716
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6718
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .line 6463
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6465
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getRouting(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public getSoundEffectMode()I
    .locals 1

    .line 8434
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8436
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSoundEffectMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8438
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSoundEffectParms(II)Landroid/media/SoundEffectParms;
    .locals 1

    .line 8536
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8538
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getSoundEffectParms(II)Landroid/media/SoundEffectParms;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8540
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getSoundEffectScene(I)I
    .locals 1

    .line 8506
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8508
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getSoundEffectScene(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8510
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getSoundEffectType(I)I
    .locals 1

    .line 8477
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8479
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getSoundEffectType(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8481
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getSoundField(I)Landroid/media/SoundField;
    .locals 1

    .line 8421
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8423
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getSoundField(I)Landroid/media/SoundField;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8425
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getSoundPositionEnable()Z
    .locals 1

    .line 3456
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3458
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSoundPositionEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3460
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSoundSpeedLinkLevel()I
    .locals 1

    .line 8554
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8556
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSoundSpeedLinkLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8558
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSpatializer()Landroid/media/Spatializer;
    .locals 1

    .line 2605
    new-instance v0, Landroid/media/Spatializer;

    invoke-direct {v0, p0}, Landroid/media/Spatializer;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    .line 1193
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1195
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1197
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getStreamMinVolume(I)I
    .locals 3

    .line 1211
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    return p1

    .line 1212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamMinVolumeInt(I)I
    .locals 1

    .line 1225
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1227
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1229
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getStreamVolume(I)I
    .locals 1

    .line 1242
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1244
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1246
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getStreamVolumeDb(III)F
    .locals 1

    .line 1282
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1285
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-gt p2, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 1288
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p3

    .line 1291
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p1

    const p2, -0x3bc28000    # -758.0f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_0

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    :cond_0
    return p1

    .line 1289
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid audio output device type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1286
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid stream volume index "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1283
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid stream type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getSupportedSystemUsages()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1523
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1525
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSupportedSystemUsages()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1527
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSurroundFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 7683
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7685
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getUiSoundsStreamType()I
    .locals 1

    .line 1346
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1348
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getUiSoundsStreamType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1350
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getVibrateSetting(I)I
    .locals 1

    .line 1687
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1689
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1691
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getVoicePosition()I
    .locals 1

    .line 9061
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9063
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getVoicePosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9065
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getVoiceStatus()I
    .locals 1

    .line 9035
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9037
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getVoiceStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9039
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "attr must not be null"

    .line 1447
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1450
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1452
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getWheelVolAdjustMode()I
    .locals 1

    .line 9493
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9495
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getWheelVolAdjustMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9497
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getXpCustomizeEffect(I)I
    .locals 1

    .line 8608
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8610
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getXpCustomizeEffect(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 6452
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6454
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6456
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .locals 1

    .line 5390
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5392
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->hasRegisteredDynamicPolicy()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5394
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAIAtmosEnabled()Z
    .locals 1

    .line 9566
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9568
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isAIAtmosEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9570
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAnyStreamActive()Z
    .locals 1

    .line 3380
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3382
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isAnyStreamActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3384
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAudioFocusExclusive()Z
    .locals 2

    .line 3488
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3490
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 3492
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAudioServerRunning()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7637
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7639
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isAudioServerRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7641
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 3

    const/16 v0, 0x80

    const-string v1, ""

    .line 2842
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x100

    .line 2845
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x200

    .line 2848
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    .line 2690
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .line 2818
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2820
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2822
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isBtCallOn()Z
    .locals 1

    .line 8961
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8963
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isBtCallOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8965
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isBtHeadPhoneOn()Z
    .locals 1

    .line 8848
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8850
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isBtHeadPhoneOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8852
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isCallScreeningModeSupported()Z
    .locals 1

    .line 3187
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3189
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCallScreeningModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3191
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isFixedVolume(I)Z
    .locals 1

    .line 9079
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9081
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isFixedVolume(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9083
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isFullVolumeDevice()Z
    .locals 3

    .line 6352
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 6353
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 6354
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 6355
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 6356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 6357
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    if-ne v2, v1, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6758
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6760
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isHomeSoundEffectEnabled()Z
    .locals 1

    .line 3899
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHomeSoundEffectEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3901
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isKaraokeOn()Z
    .locals 1

    .line 8987
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8989
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isKaraokeOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8991
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMainDriverOn()Z
    .locals 1

    .line 8835
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8837
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMainDriverOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8839
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMasterMute()Z
    .locals 1

    .line 1615
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1617
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMasterMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1619
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .line 2932
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2934
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMicrophoneMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2936
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMusicActive()Z
    .locals 2

    .line 3320
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x0

    .line 3322
    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3324
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMusicActiveRemotely()Z
    .locals 2

    .line 3473
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x1

    .line 3475
    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3477
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isMusicLimitMode()Z
    .locals 1

    .line 3413
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3415
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMusicLimitMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3417
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isOtherSessionOn()Z
    .locals 1

    .line 8996
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8998
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isOtherSessionOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9000
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isSilentMode()Z
    .locals 2

    .line 5847
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSmartSoundEnabled()Z
    .locals 1

    .line 9528
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9530
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSmartSoundEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9532
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .line 1746
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1748
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1750
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isSpeechSurroundOn()Z
    .locals 1

    .line 8822
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8824
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSpeechSurroundOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8826
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isStereoAlarmOn()Z
    .locals 1

    .line 8809
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8811
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isStereoAlarmOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8813
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isStreamActive(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3335
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p1

    return p1
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 1

    .line 6678
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6680
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 1

    .line 6666
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6668
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isStreamMute(I)Z
    .locals 1

    .line 1600
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1602
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1604
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSurroundFormatEnabled(I)Z
    .locals 1

    .line 7720
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSurroundFormatEnabled(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 7722
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isSystemSoundEnabled()Z
    .locals 1

    .line 8679
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8681
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSystemSoundEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8683
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isUsageActive(I)Z
    .locals 1

    .line 8718
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8720
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isUsageActive(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8722
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isVolumeFixed()Z
    .locals 3

    .line 1030
    monitor-enter p0

    const/4 v0, 0x1

    .line 1032
    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseFixedVolumeInitialized:Z

    if-nez v1, :cond_0

    .line 1033
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :catch_0
    :cond_0
    :try_start_1
    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolumeInitialized:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolumeInitialized:Z

    .line 1040
    throw v1

    .line 1041
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1042
    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return v0

    :catchall_1
    move-exception v0

    .line 1041
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, ""

    .line 2875
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2877
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    .line 2879
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isZenVolume()Z
    .locals 1

    .line 9097
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9099
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isZenVolume()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9101
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public loadSoundEffects()V
    .locals 1

    .line 4012
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4014
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4016
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public lockActiveStream(Z)I
    .locals 1

    .line 9106
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9108
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->lockActiveStream(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9110
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 1

    .line 6654
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6656
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public playAvasSound(ILjava/lang/String;)V
    .locals 1

    .line 9384
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9386
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playAvasSound(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9388
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public playSoundEffect(I)V
    .locals 2

    .line 3912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffect type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_2

    const/16 v0, 0x76

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3917
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3921
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3923
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3925
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public playSoundEffect(IF)V
    .locals 2

    .line 3965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffect type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    const/16 v0, 0x76

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3970
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3972
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3974
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public playSoundEffect(II)V
    .locals 2

    .line 3938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffect type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_2

    const/16 v0, 0x76

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3943
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 3947
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p2

    .line 3949
    :try_start_0
    invoke-interface {p2, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3951
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public playSoundEffectByDisplay(II)V
    .locals 2

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSoundEffect type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    const/16 v0, 0x76

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3991
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3993
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffectByDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3995
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 4

    .line 1000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    .line 1001
    iget-wide v0, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    .line 1003
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0x8

    .line 1008
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 3

    .line 7306
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 7307
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7308
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 7309
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    if-nez v1, :cond_0

    .line 7310
    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$1;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 7312
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 7314
    :cond_1
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 7316
    iget-object p2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7317
    invoke-virtual {v1}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    .line 7319
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V
    .locals 3

    .line 4289
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4290
    new-instance v1, Landroid/media/AudioManager$FocusRequestInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4291
    :cond_0
    new-instance v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p1, v0}, Landroid/media/AudioManager$FocusRequestInfo;-><init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V

    .line 4292
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object p1

    .line 4293
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 5453
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5455
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    .line 5458
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5459
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5460
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5461
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 5460
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5462
    iget-object p1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-lez p1, :cond_2

    .line 5466
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object p2, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {p1, p2}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5468
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "AudioManager"

    const-string p2, "attempt to call registerAudioPlaybackCallback() on a previouslyregistered callback"

    .line 5472
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 5450
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5313
    invoke-static {p1}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p1

    return p1
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1

    .line 6963
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 6964
    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    return-void
.end method

.method public registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 5643
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5645
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    .line 5648
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5649
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5650
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5651
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Landroid/media/AudioManager$AudioRecordingCallbackInfo;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 5650
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5652
    iget-object p1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez v1, :cond_2

    if-lez p1, :cond_2

    .line 5655
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5657
    :try_start_1
    iget-object p2, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {p1, p2}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5659
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "AudioManager"

    const-string p2, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback"

    .line 5663
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 5640
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioRecordingCallback argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerCallback(Landroid/media/AudioManager$AudioCallBack;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9738
    iput-object p1, p0, Landroid/media/AudioManager;->mAudioCallBack:Landroid/media/AudioManager$AudioCallBack;

    .line 9739
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    .line 9741
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    if-nez v0, :cond_0

    .line 9742
    new-instance v0, Landroid/media/AudioManager$AudioEventListenerToService;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$AudioEventListenerToService;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    :cond_0
    const-string v0, ""

    .line 9743
    iget-object v1, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    invoke-interface {p1, v0, v1}, Landroid/media/IAudioService;->registerCallback(Ljava/lang/String;Landroid/media/IAudioEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9745
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized registerListener(Landroid/media/AudioManager$AudioCallBack;)V
    .locals 1

    monitor-enter p0

    .line 9654
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9655
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5162
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5130
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "AudioManager"

    const-string/jumbo v0, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    .line 5131
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5136
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5139
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5142
    invoke-virtual {p0, v0, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "AudioManager"

    const-string p2, "Cannot call registerMediaButtonIntent() with a null parameter"

    .line 5171
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5174
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 5175
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    return-void
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 5231
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5234
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5274
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    const/4 p1, 0x1

    return p1
.end method

.method public registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "executor must not be null"

    .line 7819
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "volume group change cb must not be null"

    .line 7820
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7821
    sget-object p1, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->init()V

    .line 7823
    invoke-virtual {p1, p2}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->registerListener(Landroid/media/AudioManager$VolumeGroupCallback;)V

    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    .line 5808
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5810
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5812
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 3

    .line 8297
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8298
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8299
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeCommDevListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8304
    iget-object p1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8307
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8312
    :try_start_2
    iput-object p1, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    .line 8313
    iput-object p1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8310
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8312
    :goto_0
    :try_start_4
    iput-object p1, p0, Landroid/media/AudioManager;->mCommDevDispatcherStub:Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    .line 8313
    iput-object p1, p0, Landroid/media/AudioManager;->mCommDevListeners:Ljava/util/ArrayList;

    .line 8314
    throw v1

    .line 8316
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    .line 8300
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to call removeOnCommunicationDeviceChangedListener() on an unregistered listener"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 8316
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    .locals 3

    .line 3152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    iget-object v0, p0, Landroid/media/AudioManager;->mModeListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3154
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeModeListener(Landroid/media/AudioManager$OnModeChangedListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3158
    iget-object p1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3161
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3165
    :try_start_2
    iput-object p1, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

    .line 3166
    iput-object p1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3163
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3165
    :goto_0
    :try_start_4
    iput-object p1, p0, Landroid/media/AudioManager;->mModeDispatcherStub:Landroid/media/AudioManager$ModeDispatcherStub;

    .line 3166
    iput-object p1, p0, Landroid/media/AudioManager;->mModeListeners:Ljava/util/ArrayList;

    .line 3167
    throw v1

    .line 3169
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    .line 3155
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to call removeOnModeChangedListener() on an unregistered listener"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 3169
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public removeOnPreferredDeviceForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public removeOnPreferredDevicesForCapturePresetChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2329
    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 2336
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to call removeOnPreferredDevicesForCapturePresetChangedListener() on an unregistered listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2333
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown error happened"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOnPreferredDevicesForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2072
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2074
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2079
    iget-object p1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2082
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2087
    :try_start_2
    iput-object p1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    .line 2088
    iput-object p1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2085
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2087
    :goto_0
    :try_start_4
    iput-object p1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    .line 2088
    iput-object p1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    .line 2089
    throw v1

    .line 2091
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    .line 2075
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to call removeOnPreferredDeviceForStrategyChangedListener() on an unregistered listener"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 2091
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1842
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removePreferredDevicesForStrategy(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 1848
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    .locals 1

    const/4 v0, 0x0

    .line 4459
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p1

    return p1
.end method

.method public requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "Illegal null AudioFocusRequest"

    .line 4751
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4754
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->locksFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4755
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null audio policy when locking audio focus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4758
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V

    .line 4759
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4763
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4766
    :catch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_1
    move v9, v1

    .line 4769
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v10

    .line 4771
    iget-object v11, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4774
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4775
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4778
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v7

    if-eqz p2, :cond_2

    .line 4779
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move-object v8, p1

    move-object v5, v10

    .line 4774
    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_3

    .line 4786
    :try_start_2
    monitor-exit v11

    return p1

    .line 4788
    :cond_3
    iget-object p1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    if-nez p1, :cond_4

    .line 4789
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    .line 4792
    :cond_4
    new-instance p1, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    invoke-direct {p1, v10}, Landroid/media/AudioManager$BlockingFocusResultReceiver;-><init>(Ljava/lang/String;)V

    .line 4793
    iget-object p2, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {p2, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4794
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v0, 0xc8

    .line 4795
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->waitForResult(J)V

    .line 4799
    iget-object p2, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 4800
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4801
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4802
    invoke-virtual {p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->requestResult()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 4801
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 4782
    :try_start_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4794
    :goto_3
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 3

    const-string v0, "AudioManager"

    const-string/jumbo v1, "requestAudioFocus()"

    .line 4378
    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4386
    :try_start_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4388
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 4386
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Audio focus request denied due to "

    .line 4392
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 v4, p4, 0x3

    if-ne p4, v4, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4585
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result p1

    return p1

    .line 4582
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flags 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4583
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 4629
    invoke-static {p3}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit8 v0, p4, 0x7

    if-ne p4, v0, :cond_9

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4637
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null focus listener when flagged as accepting delayed focus grant"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4642
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null focus listener when flagged as pausing instead of ducking"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v4, 0x4

    and-int/2addr p4, v4

    if-ne p4, v4, :cond_5

    if-eqz p5, :cond_4

    goto :goto_2

    .line 4646
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null audio policy when locking audio focus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4650
    :cond_5
    :goto_2
    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v5, p3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    const/4 p3, 0x0

    .line 4651
    invoke-virtual {v5, p1, p3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4652
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 p2, 0x0

    if-ne v0, v1, :cond_6

    move p3, v1

    goto :goto_3

    :cond_6
    move p3, p2

    .line 4653
    :goto_3
    invoke-virtual {p1, p3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    if-ne v2, v3, :cond_7

    move p3, v1

    goto :goto_4

    :cond_7
    move p3, p2

    .line 4655
    :goto_4
    invoke-virtual {p1, p3}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    if-ne p4, v4, :cond_8

    goto :goto_5

    :cond_8
    move v1, p2

    .line 4657
    :goto_5
    invoke-virtual {p1, v1}, Landroid/media/AudioFocusRequest$Builder;->setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4658
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    .line 4659
    invoke-virtual {p0, p1, p5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p1

    return p1

    .line 4633
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal flags 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4634
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4630
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid duration hint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4627
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioAttributes argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestAudioFocusForCall(II)V
    .locals 10

    .line 4968
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4970
    :try_start_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4971
    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 4974
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    .line 4970
    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4978
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public requestAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;II)I
    .locals 9

    .line 4677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4678
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4680
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4681
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const-string v6, "com.android.test.fakeclient"

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 4680
    invoke-interface/range {v0 .. v8}, Landroid/media/IAudioService;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4686
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public requestAudioFocusPosition(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 4816
    invoke-static {p3}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4820
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    const/4 p3, 0x0

    .line 4821
    invoke-virtual {v0, p1, p3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4822
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 4823
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4825
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4827
    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 4828
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    const-string p2, "Illegal null AudioFocusRequest"

    .line 4830
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4833
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->locksFocus()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4837
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V

    .line 4838
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4842
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4845
    :catch_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    move v9, p2

    .line 4848
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object p2

    .line 4850
    iget-object p3, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4853
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4854
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4857
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v7

    const/4 v8, 0x0

    move-object v5, p2

    move v6, p4

    .line 4853
    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocusPosition(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;IILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p4, 0x64

    if-eq p1, p4, :cond_0

    .line 4865
    :try_start_2
    monitor-exit p3

    return p1

    .line 4867
    :cond_0
    iget-object p1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    if-nez p1, :cond_1

    .line 4868
    new-instance p1, Ljava/util/HashMap;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    .line 4871
    :cond_1
    new-instance p1, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    invoke-direct {p1, p2}, Landroid/media/AudioManager$BlockingFocusResultReceiver;-><init>(Ljava/lang/String;)V

    .line 4872
    iget-object p4, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4873
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 p3, 0xc8

    .line 4874
    invoke-virtual {p1, p3, p4}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->waitForResult(J)V

    .line 4878
    iget-object p4, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter p4

    .line 4879
    :try_start_3
    iget-object p3, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4880
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4881
    invoke-virtual {p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->requestResult()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 4880
    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 4861
    :try_start_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 4873
    :goto_1
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 4834
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null audio policy when locking audio focus"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4817
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid duration hint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4814
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioAttributes argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreMusicVolume()V
    .locals 2

    .line 9143
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9145
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->restoreMusicVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9147
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public selectAlarmChannels(III)I
    .locals 1

    .line 8861
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8863
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->selectAlarmChannels(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8865
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;J)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6571
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6573
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1, p2, p3}, Landroid/media/IAudioService;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6576
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAdjustVolumeMode(I)V
    .locals 1

    .line 9448
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9450
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setAdjustVolumeMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9452
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAllowedCapturePolicy(I)V
    .locals 3

    .line 1781
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1783
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setAllowedCapturePolicy(I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "AudioManager"

    .line 1785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setAllowedCapturePolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 1789
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAmpFreeSoundFieldCoordinate(II)V
    .locals 1

    .line 9537
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9539
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setAmpFreeSoundFieldCoordinate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9541
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAudioPathWhiteList(ILjava/lang/String;)V
    .locals 1

    .line 9366
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9368
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setAudioPathWhiteList(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9370
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAudioServerStateCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 7593
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7594
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-nez v1, :cond_0

    .line 7598
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7600
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7604
    :try_start_2
    iput-object p1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 7605
    iput-object p2, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7606
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 7602
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 7595
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setAudioServerStateCallback called with already registered callabck"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7606
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 7589
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null Executor for the AudioServerStateCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7586
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioServerStateCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAvasMediaEnable(Z)V
    .locals 1

    .line 8631
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8633
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setAvasMediaEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8635
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBanVolumeChangeMode(II)V
    .locals 2

    .line 9167
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9169
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setBanVolumeChangeMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9171
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 6

    .line 6432
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 6434
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6437
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .locals 1

    .line 6402
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6404
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6407
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1

    .line 2803
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2805
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2807
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBtCallMode(I)V
    .locals 1

    .line 8935
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8937
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBtCallMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8939
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBtCallOn(Z)V
    .locals 1

    .line 8887
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8889
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBtCallOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8891
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBtCallOnFlag(I)V
    .locals 1

    .line 8900
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8902
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBtCallOnFlag(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8904
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBtHeadPhone(Z)V
    .locals 1

    .line 8796
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8798
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBtHeadPhone(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8800
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3

    .line 8118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8120
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8123
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result p1

    return p1

    .line 8121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In valid device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8125
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDangerousSoundEffectVolLevel(I)V
    .locals 1

    .line 9466
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9468
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDangerousSoundEffectVolLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9470
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDangerousTtsStatus(I)V
    .locals 1

    .line 9191
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9193
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDangerousTtsStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9195
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDangerousTtsVolLevel(I)V
    .locals 1

    .line 9215
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9217
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDangerousTtsVolLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9219
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6306
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6307
    invoke-static {p2}, Landroid/media/AudioManager;->enforceValidVolumeBehavior(I)V

    .line 6309
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6311
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 6312
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6311
    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6314
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setDyn3dEffectLevel(I)V
    .locals 1

    .line 8563
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8565
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDyn3dEffectLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8567
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setEncodedSurroundMode(I)Z
    .locals 1

    .line 7653
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setEncodedSurroundMode(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 7655
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setFixedVolume(ZII)Z
    .locals 2

    .line 9070
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9072
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->setFixedVolume(ZIILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9074
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setFocusRequestResult(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 5017
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5019
    :try_start_0
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5021
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 5015
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioPolicy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5012
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null AudioFocusInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 1

    .line 6743
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6745
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setHomeSoundEffectEnabled(Z)V
    .locals 1

    .line 3887
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHomeSoundEffectEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setKaraokeOn(Z)V
    .locals 1

    .line 8974
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8976
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setKaraokeOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8978
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMainDriver(Z)V
    .locals 1

    .line 8757
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8759
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMainDriver(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8761
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMainDriverMode(I)V
    .locals 1

    .line 8770
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8772
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMainDriverMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8774
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMassageSeatLevel(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 9275
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9277
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9278
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 9279
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9281
    :cond_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->setMassageSeatLevel(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMassageSeatLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setMasterMute(ZI)V
    .locals 3

    .line 1139
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1141
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1141
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1144
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMicrophoneMute(Z)V
    .locals 3

    .line 2897
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2899
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2900
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2899
    invoke-interface {v0, p1, v1, v2}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2902
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMicrophoneMuteFromSwitch(Z)V
    .locals 1

    .line 2918
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2920
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMicrophoneMuteFromSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2922
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMmapToAvasEnable(Z)V
    .locals 1

    .line 9333
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9335
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMmapToAvasEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9337
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMode(I)V
    .locals 3

    .line 2985
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2987
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2989
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMultiAudioFocusEnabled(Z)V
    .locals 1

    .line 8042
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMultiAudioFocusEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8044
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMusicLimitMode(Z)V
    .locals 1

    .line 3397
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3399
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMusicLimitMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3401
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMusicSeatEffect(I)V
    .locals 1

    .line 9315
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9317
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMusicSeatEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9319
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMusicSeatEnable(Z)V
    .locals 1

    .line 9288
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9290
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMusicSeatEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9292
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMusicSeatRythmPause(Z)V
    .locals 1

    .line 9306
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9308
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMusicSeatRythmPause(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9310
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setNavVolDecreaseEnable(Z)V
    .locals 1

    .line 8581
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8583
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNavVolDecreaseEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8585
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setNavigationRepeatSoundEffectsEnabled(Z)V
    .locals 1

    .line 3863
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNavigationRepeatSoundEffectsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setNetEcallEnable(Z)V
    .locals 1

    .line 8909
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8911
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNetEcallEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8913
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0

    .line 3571
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2193
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager;->setPreferredDevicesForCapturePreset(ILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1827
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 1888
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1894
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 1895
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1899
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result p1

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 1902
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1891
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tried to set preferred devices for strategy with a empty list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRingerMode(I)V
    .locals 2

    .line 1371
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1376
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1378
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setRingerModeInternal(I)V
    .locals 2

    .line 6703
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6705
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setRingtoneSessionId(II)V
    .locals 2

    .line 9155
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9157
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setRingtoneSessionId(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9159
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setRouting(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSessionIdStatus(III)V
    .locals 1

    .line 9266
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9268
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setSessionIdStatus(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9270
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoftTypeVolumeMute(IZ)V
    .locals 1

    .line 9375
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9377
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoftTypeVolumeMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9379
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundEffectMode(I)V
    .locals 1

    .line 8448
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8450
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSoundEffectMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8452
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundEffectParms(IIII)V
    .locals 1

    .line 8523
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8525
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->setSoundEffectParms(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8527
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundEffectScene(II)V
    .locals 1

    .line 8492
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8494
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundEffectScene(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8496
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundEffectType(II)V
    .locals 1

    .line 8463
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8465
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundEffectType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8467
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundField(III)V
    .locals 1

    .line 8407
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8409
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setSoundField(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8411
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundPositionEnable(Z)V
    .locals 1

    .line 3447
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3449
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSoundPositionEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3451
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSoundSpeedLinkLevel(I)V
    .locals 1

    .line 8545
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8547
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSoundSpeedLinkLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8549
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2

    .line 1732
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1734
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1736
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSpecialOutputId(IIZ)V
    .locals 1

    .line 9351
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9353
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setSpecialOutputId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9355
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSpeechSurround(Z)V
    .locals 1

    .line 8744
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8746
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpeechSurround(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8748
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setStereoAlarm(Z)V
    .locals 1

    .line 8731
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8733
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setStereoAlarm(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8735
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setStreamMute(IZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "AudioManager"

    const-string/jumbo v1, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    .line 1583
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 p2, -0x64

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1586
    invoke-virtual {p0, p2, p1, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    .line 1588
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_1
    return-void
.end method

.method public setStreamPosition(ILjava/lang/String;II)V
    .locals 1

    .line 3438
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3440
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/IAudioService;->setStreamPosition(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setStreamSolo(IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "AudioManager"

    const-string/jumbo p2, "setStreamSolo has been deprecated. Do not use."

    .line 1546
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStreamVolume(III)V
    .locals 2

    .line 1400
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1402
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1404
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8029
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 8030
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 8029
    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8032
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setSupportedSystemUsages([I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "systemUsages must not be null"

    .line 1506
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1507
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1509
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSupportedSystemUsages([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1511
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setSurroundFormatEnabled(IZ)Z
    .locals 1

    .line 7706
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSurroundFormatEnabled(IZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 7708
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVibrateSetting(II)V
    .locals 1

    .line 1714
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1716
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1718
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVoicePosition(II)V
    .locals 2

    .line 9048
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9050
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setVoicePosition(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9052
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVoiceStatus(I)V
    .locals 1

    .line 9022
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9024
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVoiceStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9026
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 1

    .line 6640
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6642
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeFaded(III)V
    .locals 2

    .line 9119
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9121
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->setVolumeFaded(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9123
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "attr must not be null"

    .line 1423
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1427
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/IAudioService;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1429
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 1

    .line 6728
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6730
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setWheelVolAdjustMode(I)V
    .locals 1

    .line 9484
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9486
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setWheelVolAdjustMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9488
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 6374
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6376
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 6377
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 6376
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6379
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setXpCustomizeEffect(II)V
    .locals 1

    .line 8599
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 8601
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setXpCustomizeEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8603
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public shouldVibrate(I)Z
    .locals 1

    .line 1661
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1663
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1665
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public startBluetoothSco()V
    .locals 3

    .line 2740
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2742
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 2743
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2742
    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2745
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startBluetoothScoVirtualCall()V
    .locals 2

    .line 2766
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2768
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2770
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public stopAvasSound(Ljava/lang/String;)V
    .locals 1

    .line 9393
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9395
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->stopAvasSound(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9397
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public stopBluetoothSco()V
    .locals 2

    .line 2785
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2787
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2789
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public temporaryChangeVolumeDown(IIIZ)V
    .locals 6

    .line 9248
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9250
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->temporaryChangeVolumeDown(IIZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9252
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unRegisterCallback()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9757
    iput-object v0, p0, Landroid/media/AudioManager;->mAudioCallBack:Landroid/media/AudioManager$AudioCallBack;

    .line 9758
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_0
    const-string v2, ""

    .line 9760
    iget-object v3, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterCallback(Ljava/lang/String;Landroid/media/IAudioEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9762
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9764
    :goto_0
    iput-object v0, p0, Landroid/media/AudioManager;->mListenerToService:Landroid/media/AudioManager$AudioEventListenerToService;

    const/4 v0, 0x0

    return v0
.end method

.method public unloadSoundEffects()V
    .locals 1

    .line 4026
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4028
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4030
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .locals 2

    .line 7329
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7330
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7331
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7332
    iget-object p1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 7333
    iget-object p1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 7336
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1

    .line 4303
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 5487
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5488
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string p1, "AudioManager"

    const-string v1, "attempt to call unregisterAudioPlaybackCallback() on a callback that was never registered"

    .line 5489
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    monitor-exit v0

    return-void

    .line 5493
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5494
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5495
    iget-object p1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    if-nez p1, :cond_2

    .line 5499
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1

    iget-object v1, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {p1, v1}, Landroid/media/IAudioService;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5501
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "AudioManager"

    const-string v1, "attempt to call unregisterAudioPlaybackCallback() on a callback already unregistered or never registered"

    .line 5505
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 5485
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "Illegal null AudioPolicy argument"

    .line 5373
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5374
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5376
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->invalidateCaptorsAndInjectors()V

    .line 5377
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5378
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5380
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5347
    invoke-static {p1}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1

    .line 6973
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    return-void
.end method

.method public unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 5678
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5679
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5680
    monitor-exit v0

    return-void

    .line 5682
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5683
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5684
    iget-object p1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez v1, :cond_2

    if-nez p1, :cond_2

    .line 5687
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5689
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {p1, v1}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5691
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "AudioManager"

    const-string v1, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered"

    .line 5695
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 5676
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null AudioRecordingCallback argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized unregisterListener(Landroid/media/AudioManager$AudioCallBack;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioManager"

    const-string/jumbo v1, "unregisterListener"

    .line 9663
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9664
    iget-object v0, p0, Landroid/media/AudioManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9674
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5210
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5190
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5192
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5193
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 5196
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 1

    .line 5217
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 5218
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 5246
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5249
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 5293
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    return-void
.end method

.method public unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "volume group change cb must not be null"

    .line 7834
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7835
    sget-object v0, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->unregisterListener(Landroid/media/AudioManager$VolumeGroupCallback;)V

    return-void
.end method
