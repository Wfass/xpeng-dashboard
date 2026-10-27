.class public Lcom/xiaopeng/libconfig/remotecontrol/RemoteControlConfig;
.super Ljava/lang/Object;
.source "RemoteControlConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libconfig/remotecontrol/RemoteControlConfig$RemoteControlCode;
    }
.end annotation


# static fields
.field public static final ACTION_BROADCAST_SELF_CHARGING_STATION_VISIBLE:Ljava/lang/String; = "com.xiaopeng.action.MAP_SELF_CHARGING_STATION_VISIBLE"

.field public static final ACTION_XMART_FEEDBACK:Ljava/lang/String; = "com.xiaopeng.action.XMART_FEEDBACK"

.field public static final ACTION_XMART_FEEDBACK_VALUE:Ljava/lang/String; = "xmart_feedback_value"

.field public static final AIOS_ACTION_CONTROL_REAR_MIRROR:Ljava/lang/String; = "com.xiaopeng.aios.action.CONTROL_REAR_MIRROR"

.field public static final AIOS_ACTION_CONTROL_WINDOW:Ljava/lang/String; = "com.xiaopeng.aios.action.CONTROL_CAR_WINDOWS"

.field public static final AIOS_ACTION_EXIT:Ljava/lang/String; = "com.xiaopeng.action.AIOS_EXIT"

.field public static final AIOS_ACTION_LOCAL_FM:Ljava/lang/String; = "com.xiaopeng.action.AIOS.LOCAL.FM"

.field public static final AIOS_ACTION_NETWORK_FM:Ljava/lang/String; = "com.xiaopeng.action.AIOS.NETWORK.FM"

.field public static final AIR_CONFIG_CLOSE:I = 0x0

.field public static final AIR_CONFIG_OPEN:I = 0x1

.field public static final CAR_CONTROL_CLOSE:I = 0x0

.field public static final CAR_CONTROL_INVALID:I = -0x1

.field public static final CAR_CONTROL_OPEN:I = 0x1

.field public static final EXTRA_CHARGING_STATION_ID:Ljava/lang/String; = "extra_string_charging_station_id"

.field public static final EXTRA_INT_REMOTE_SET_DRIVE_MODE_WHICH:Ljava/lang/String; = "extra_boolean_remote_set_drive_mode_which"

.field public static final EXTRA_KEY_ACTION_VALUE:Ljava/lang/String; = "key_extra_action_value"

.field public static final EXTRA_KEY_ACTION_VALUE2:Ljava/lang/String; = "key_extra_action_value2"

.field public static final EXTRA_KEY_CAMERA_ANGLE:Ljava/lang/String; = "key_cameraAngle"

.field public static final EXTRA_KEY_CAMERA_IS_UP:Ljava/lang/String; = "key_isCameraUp"

.field public static final EXTRA_KEY_CONTROL_VALUE:Ljava/lang/String; = "key_controlValue"

.field public static final FM_CONTROL_CLOSE:I = 0x0

.field public static final FM_CONTROL_OPEN:I = 0x1

.field public static final HTTP_CODE_SUCCESS:I = 0xc8

.field public static final KEY_AIOS_FM:Ljava/lang/String; = "k_aios_fm"

.field public static final KEY_AIOS_REAR_MIRROR:Ljava/lang/String; = "k_aios_r_m"

.field public static final KEY_AIOS_WIDNOW:Ljava/lang/String; = "k_aios_w"

.field public static final NFC_ACTION_CLIENT_DISCONNECTED:Ljava/lang/String; = "com.xiaopeng.action.NFC_CLIENT_DISCONNECTED"

.field public static final NFC_ACTION_FILE_TRANSFER_FAIL:Ljava/lang/String; = "com.xiaopeng.action.FILE_TRANSFER_FAIL"

.field public static final NFC_ACTION_FILE_TRANSFER_SUCCESS:Ljava/lang/String; = "com.xiaopeng.action.FILE_TRANSFER_SUCCESS"

.field public static final NFC_ACTION_NEW_CLIENT_CONNECTED:Ljava/lang/String; = "com.xiaopeng.action.NFC_NEW_CLIENT_CONNECTED"

.field public static final NFC_ACTION_START_FILE_TRANSFER:Ljava/lang/String; = "com.xiaopeng.action.NFC_START_FILE_TRANSFER"

.field public static final NFC_ACTION_START_LIVE:Ljava/lang/String; = "com.xiaopeng.action.NFC_START_LIVE"

.field public static final NFC_WIFI_MUSIC_CAN_IMPORT:Ljava/lang/String; = "com.xiaopeng.action.WIFI_MUSIC"

.field public static final REMOTE_ACCOUNT_FACE_BIND:I = 0xf

.field public static final REMOTE_ACCOUNT_LOGIN_SERVICE_TYPE:I = 0xe

.field public static final REMOTE_ACCOUNT_POWER_UPDATE:I = 0x14

.field public static final REMOTE_ACCOUNT_SWITCH_SERVICE_TYPE:I = 0x10

.field public static final REMOTE_ACCOUNT_UPDATE_DATA:I = 0x15

.field public static final REMOTE_ACTION_AUTO_PARK:Ljava/lang/String; = "com.xiaopeng.action.AUTO_PARK"

.field public static final REMOTE_ACTION_CALL_CONTROL_MODE:Ljava/lang/String; = "com.xiaopeng.action.CALL_CONTROL_MODE"

.field public static final REMOTE_ACTION_CALL_CONTROL_MOVING:Ljava/lang/String; = "com.xiaopeng.action.CALL_CONTROL_MOVING"

.field public static final REMOTE_ACTION_CALL_GET_STATE:Ljava/lang/String; = "com.xiaopeng.action.CALL_GET_STATE"

.field public static final REMOTE_ACTION_CONNECT_TOP_CAR_CAMERA:Ljava/lang/String; = "com.xiaopeng.action.CONNECT_TOP_CAR_CAMERA"

.field public static final REMOTE_ACTION_CONTROL_CAR_DOOR_LOCK:Ljava/lang/String; = "com.xiaopeng.action.CONTROL_CAR_DOOR_LOCK"

.field public static final REMOTE_ACTION_CONTROL_CAR_DOOR_UNLOCK:Ljava/lang/String; = "com.xiaopeng.action.CONTROL_CAR_DOOR_UNLOCK"

.field public static final REMOTE_ACTION_CONTROL_CAR_WINDOW_DOWN:Ljava/lang/String; = "com.xiaopeng.action.CONTROL_CAR_WINDOW_DOWN"

.field public static final REMOTE_ACTION_CONTROL_CAR_WINDOW_STOP:Ljava/lang/String; = "com.xiaopeng.action.CONTROL_CAR_WINDOW_STOP"

.field public static final REMOTE_ACTION_CONTROL_CAR_WINDOW_UP:Ljava/lang/String; = "com.xiaopeng.action.CONTROL_CAR_WINDOW_UP"

.field public static final REMOTE_ACTION_CONTROL_TRUNK:Ljava/lang/String; = "com.xiaopeng.action.REMOTE_CONTROL_TRUNK"

.field public static final REMOTE_ACTION_HAS_COMMAND:Ljava/lang/String; = "com.xiaopeng.action.HAS_REMOTE_COMMAND"

.field public static final REMOTE_ACTION_LIVE_CLOSE_OR_OPEN:Ljava/lang/String; = "com.xiaopeng.action.CLOSE_OR_OPEN"

.field public static final REMOTE_ACTION_LIVE_MOVE:Ljava/lang/String; = "com.xiaopeng.action.LIVE_MOVE"

.field public static final REMOTE_ACTION_LIVE_OPEN_45_3D_CAMERA:Ljava/lang/String; = "com.xiaopeng.action.OPEN_PANORAMA_CAMERA"

.field public static final REMOTE_ACTION_LIVE_STATE:Ljava/lang/String; = "com.xiaopeng.action.LIVE_STATE"

.field public static final REMOTE_ACTION_SET_DRIVE_MODE_FROM_CARCONTROL:Ljava/lang/String; = "com.xiaopeng.action.SET_DRIVE_MODE_FROM_CARCONTROL"

.field public static final REMOTE_ACTION_SET_DRIVE_MODE_FROM_FACTORYTEST:Ljava/lang/String; = "com.xiaopeng.action.SET_DRIVE_MODEFROM_FACTORYTEST"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_CHANGE_ANGLE:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_CHANGE_ANGLE"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_CHANGE_HEIGHT:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_CHANGE_HEIGHT"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_TAKE_CHANGE_ANGLE_FEEDBACK:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_TAKE_CHANGE_ANGLE_FEEDBACK"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_TAKE_CHANGE_HEIGHT_FEEDBACK:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_TAKE_CHANGE_HEIGHT_FEEDBACK"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_TAKE_PICTURE:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_TAKE_PICTURE"

.field public static final REMOTE_ACTION_TOP_CAR_CAMERA_TAKE_PICTURE_FEEDBACK:Ljava/lang/String; = "com.xiaopeng.action.TOP_CAR_CAMERA_TAKE_PICTURE_FEEDBACK"

.field public static final REMOTE_AIR_CONTROL_AUTO:I = 0x3

.field public static final REMOTE_AIR_CONTROL_SWITCH:I = 0x1

.field public static final REMOTE_AIR_CONTROL_TEMPERATURE:I = 0x2

.field public static final REMOTE_AIR_DEFROST:I = 0x4

.field public static final REMOTE_AIR_DOWN:I = 0x2

.field public static final REMOTE_AIR_DOWN_TEMP:I = 0x7

.field public static final REMOTE_AIR_SELECT_TO:I = 0x3

.field public static final REMOTE_AIR_SERVICE_TYPE:I = 0x3

.field public static final REMOTE_AIR_SWIFT:I = 0x0

.field public static final REMOTE_AIR_UP:I = 0x1

.field public static final REMOTE_AIR_UP_TEMP:I = 0x6

.field public static final REMOTE_AIR_WARM:I = 0x5

.field public static final REMOTE_AUTO_PARK_SERVICE_TYPE:I = 0xa

.field public static final REMOTE_CALL_SERVICE_TYPE:I = 0xd

.field public static final REMOTE_CAMERA_SERVICE_TYPE:I = 0x1

.field public static final REMOTE_CAR_DOOR_LOCK_SERVICE_TYPE:I = 0x9

.field public static final REMOTE_CAR_WINDOW_SERVICE_TYPE:I = 0xc

.field public static final REMOTE_CHARGE_CONTROL_MAXSET:I = 0x2

.field public static final REMOTE_CHARGE_CONTROL_PORT:I = 0x3

.field public static final REMOTE_CHARGE_CONTROL_SWITCH:I = 0x1

.field public static final REMOTE_CHARGE_SERVICE_TYPE:I = 0x4

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_EXIT:I = 0xc

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_IN:I = 0x8

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_IN_FINISH:I = 0xa

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_IN_PAUSE:I = 0x9

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_IN_READY:I = 0xd

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_OUT:I = 0x5

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_OUT_EXIT:I = 0xb

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_OUT_FINISH:I = 0x7

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_OUT_PAUSE:I = 0x6

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_AUTO_PARKING_OUT_READY:I = 0xe

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_FAIL:I = 0x0

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_HAS_NO_PARKED_AND_HAS_LOT:I = 0x3

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_HAS_NO_PARKED_AND_NO_LOT:I = 0x4

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_HAS_PARKED_WITHOUT_AUTO_PARK:I = 0x2

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_HAS_PARKED_WITH_AUTO_PARK:I = 0x1

.field public static final REMOTE_COMMAND_AUTO_PARK_STATE_SUCCESS:I = 0x1

.field public static final REMOTE_COMMAND_CALL_MOVING_AHEAD:I = 0x1

.field public static final REMOTE_COMMAND_CALL_MOVING_BACK:I = -0x1

.field public static final REMOTE_COMMAND_CALL_MOVING_STOP:I = 0x0

.field public static final REMOTE_COMMAND_CODE2:I = 0x8

.field public static final REMOTE_COMMAND_CONNECT_TOP_CAR_CAMERA:I = 0x0

.field public static final REMOTE_COMMAND_CONNECT_TOP_CAR_CAMERA_FEEDBACK:I = 0x2711

.field public static final REMOTE_COMMAND_ENTER_CALL_MODE:I = 0x1

.field public static final REMOTE_COMMAND_EXIT_CALL_MODE:I = -0x1

.field public static final REMOTE_COMMAND_LIVE_CLIENT_IS_LIVING:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_CLIENT_IS_LIVING"

.field public static final REMOTE_COMMAND_LIVE_VALUE_CLOSE_LIVE:I = -0x1

.field public static final REMOTE_COMMAND_LIVE_VALUE_CLOSE_LIVE_AND_TOP_CAMERA:I = 0x0

.field public static final REMOTE_COMMAND_LIVE_VALUE_OPEN_360_BACK_CAMERA:I = 0x3

.field public static final REMOTE_COMMAND_LIVE_VALUE_OPEN_360_FRONT_CAMERA:I = 0x2

.field public static final REMOTE_COMMAND_LIVE_VALUE_OPEN_TOP_CAMERA:I = 0x1

.field public static final REMOTE_COMMAND_NAVI:I = 0x7

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_CHANGE_ANGLE:I = 0x2

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_CHANGE_HEIGHT:I = 0x1

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_TAKE_CHANGE_ANGLE_FEEDBACK:I = 0x33451

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_TAKE_CHANGE_HEIGHT_FEEDBACK:I = 0x1adb1

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_TAKE_PICTURE:I = 0x3

.field public static final REMOTE_COMMAND_TOP_CAR_CAMERA_TAKE_PICTURE_FEEDBACK:I = 0x4baf1

.field public static final REMOTE_COMMAND_TYPE_AUTO_PARK_START_IN:I = 0x3

.field public static final REMOTE_COMMAND_TYPE_AUTO_PARK_START_OUT:I = 0x2

.field public static final REMOTE_COMMAND_TYPE_AUTO_PARK_STATE:I = 0x1

.field public static final REMOTE_COMMAND_TYPE_AUTO_PARK_STOP:I = 0x4

.field public static final REMOTE_COMMAND_TYPE_CALL_STATE:I = 0x3

.field public static final REMOTE_COMMAND_TYPE_CAR_WINDOW:I = 0x1

.field public static final REMOTE_COMMAND_TYPE_CONTROL_CALL_MODE:I = 0x2

.field public static final REMOTE_COMMAND_TYPE_CONTROL_MOVING:I = 0x1

.field public static final REMOTE_COMMAND_TYPE_LIVE_MOVE:I = 0x3

.field public static final REMOTE_COMMAND_TYPE_LIVE_OPEN_OR_CLOSE:I = 0x2

.field public static final REMOTE_COMMAND_TYPE_LIVE_REQUEST_CLOUD_LIVE:I = 0xb

.field public static final REMOTE_COMMAND_TYPE_LIVE_STATE:I = 0x1

.field public static final REMOTE_COMMAND_TYPE_UPLOAD_CARINFO_IMMEDIATELY:I = 0x2

.field public static final REMOTE_COMMAND_TYPE_UPLOAD_CARINFO_START:I = 0x1

.field public static final REMOTE_COMMAND_TYPE_UPLOAD_CARINFO_STOP:I = 0x0

.field public static final REMOTE_COMMAND_TYPE_UPLOAD_CODE:I = 0x1

.field public static final REMOTE_CONTROL_AIR:Ljava/lang/String; = "com.android.systemui.REMOTE_CONTROL_AIR"

.field public static final REMOTE_CONTROL_AIR_FEEDBACK:Ljava/lang/String; = "com.android.systemui.REMOTE_CONTROL_AIR_FEEDBACK"

.field public static final REMOTE_CONTROL_CAR_DOOR_LOCK:I = 0x1

.field public static final REMOTE_CONTROL_CAR_DOOR_UNLOCK:I = 0x0

.field public static final REMOTE_CONTROL_CAR_WINDOW_DOWN:I = -0x1

.field public static final REMOTE_CONTROL_CAR_WINDOW_STOP:I = 0x0

.field public static final REMOTE_CONTROL_CAR_WINDOW_UP:I = 0x1

.field public static final REMOTE_CONTROL_CHARGE:Ljava/lang/String; = "com.android.systemui.REMOTE_CONTROL_CHARGE"

.field public static final REMOTE_CONTROL_CHARGE_FEEDBACK:Ljava/lang/String; = "com.android.systemui.REMOTE_CONTROL_CHARGE_FEEDBACK"

.field public static final REMOTE_CONTROL_FLASH_LIGHT:Ljava/lang/String; = "com.xiaopeng.action.REMOTE_CONTROL_FLASH_LIGHT"

.field public static final REMOTE_CONTROL_TOP_CAMERA_CLOSE:I = 0x0

.field public static final REMOTE_CONTROL_TOP_CAMERA_OPEN:I = 0x1

.field public static final REMOTE_CONTROL_WHISTLE:Ljava/lang/String; = "com.xiaopeng.action.REMOTE_CONTROL_WHISTLE"

.field public static final REMOTE_HORN_SERVICE_TYPE:I = 0x6

.field public static final REMOTE_LIGHTS_SERVICE_TYPE:I = 0x5

.field public static final REMOTE_LIVE_SERVICE_TYPE:I = 0xb

.field public static final REMOTE_NAVI_SEND:Ljava/lang/String; = "com.xiaopeng.navi.broadcast"

.field public static final SERVICE_TYPE_AIOT_CORE_SERVICE_BEGIN:I = 0xfa0

.field public static final SERVICE_TYPE_AIOT_CORE_SERVICE_END:I = 0x1067

.field public static final SERVICE_TYPE_CAARDIAGNOSIS_END:I = 0x897

.field public static final SERVICE_TYPE_CARDIAGNOSIS_RUN_SH:I = 0x7d0

.field public static final SERVICE_TYPE_CONNECTOR_LOCK_STATUS:I = 0x1b

.field public static final SERVICE_TYPE_LIVE_HEART_BEAT:I = 0x1

.field public static final SERVICE_TYPE_LIVE_HEART_BEAT_NEW:I = 0xb

.field public static final SERVICE_TYPE_MAP_GAODE_LOG:I = 0x45c

.field public static final SERVICE_TYPE_TRANSPORT_MODE_BEGIN:I = 0xbb8

.field public static final SERVICE_TYPE_TRANSPORT_MODE_END:I = 0xc7f

.field public static final SERVICE_TYPE_UPLOAD_CARINFO:I = 0x13

.field public static final SERVICE_TYPE_UPLOAD_CODE:I = 0x19

.field public static final SERVICE_TYPE_UPLOAD_REMOTE_LOG:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
