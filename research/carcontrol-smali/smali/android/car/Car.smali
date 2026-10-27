.class public final Landroid/car/Car;
.super Ljava/lang/Object;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/Car$FeaturerRequestEnum;,
        Landroid/car/Car$StateTypeEnum;,
        Landroid/car/Car$CarServiceLifecycleListener;,
        Landroid/car/Car$ConnectionType;,
        Landroid/car/Car$CarRegion;,
        Landroid/car/Car$CarType;,
        Landroid/car/Car$CduType;,
        Landroid/car/Car$CarStage;
    }
.end annotation


# static fields
.field public static final ACCESS_PRIVATE_DISPLAY_ID:Ljava/lang/String; = "android.car.permission.ACCESS_PRIVATE_DISPLAY_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AOSP_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "diagnostic"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_FOCUS_SERVICE:Ljava/lang/String; = "app_focus"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "car_bluetooth"

.field public static final CABIN_SERVICE:Ljava/lang/String; = "cabin"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_ACTIVITY_SERVICE:Ljava/lang/String; = "car_activity_service"

.field public static final CAR_BUGREPORT_SERVICE:Ljava/lang/String; = "car_bugreport"

.field public static final CAR_CATEGORY_NAVIGATION:Ljava/lang/String; = "android.car.cluster.NAVIGATION"

.field public static final CAR_CDU_A1:Ljava/lang/String; = "A1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_CDU_A2:Ljava/lang/String; = "A2"

.field public static final CAR_CDU_A3:Ljava/lang/String; = "A3"

.field public static final CAR_CDU_Q1:Ljava/lang/String; = "Q1"

.field public static final CAR_CDU_Q2:Ljava/lang/String; = "Q2"

.field public static final CAR_CDU_Q3:Ljava/lang/String; = "Q3"

.field public static final CAR_CDU_Q4:Ljava/lang/String; = "Q4"

.field public static final CAR_CDU_Q5:Ljava/lang/String; = "Q5"

.field public static final CAR_CDU_Q6:Ljava/lang/String; = "Q6"

.field public static final CAR_CDU_Q7:Ljava/lang/String; = "Q7"

.field public static final CAR_CDU_Q8_E28A:Ljava/lang/String; = "Q8"

.field public static final CAR_CDU_Q9_F30:Ljava/lang/String; = "Q9"

.field public static final CAR_CDU_TYPE_A1_D20:Ljava/lang/String; = "A1"

.field public static final CAR_CDU_TYPE_A2_D20P:Ljava/lang/String; = "A2"

.field public static final CAR_CDU_TYPE_A3_D21:Ljava/lang/String; = "A3"

.field public static final CAR_CDU_TYPE_M1_F57AES:Ljava/lang/String; = "M1"

.field public static final CAR_CDU_TYPE_M2_D02:Ljava/lang/String; = "M2"

.field public static final CAR_CDU_TYPE_M3_DO3:Ljava/lang/String; = "M3"

.field public static final CAR_CDU_TYPE_M4_11M:Ljava/lang/String; = "M4"

.field public static final CAR_CDU_TYPE_M4_V31:Ljava/lang/String; = "M4"

.field public static final CAR_CDU_TYPE_M6_D01A:Ljava/lang/String; = "M6"

.field public static final CAR_CDU_TYPE_M7_F30BE:Ljava/lang/String; = "M7E"

.field public static final CAR_CDU_TYPE_M7_F30BS:Ljava/lang/String; = "M7S"

.field public static final CAR_CDU_TYPE_M9_F01E:Ljava/lang/String; = "M9E"

.field public static final CAR_CDU_TYPE_M9_F01S:Ljava/lang/String; = "M9S"

.field public static final CAR_CDU_TYPE_MB_D11:Ljava/lang/String; = "MB"

.field public static final CAR_CDU_TYPE_Q1_E28:Ljava/lang/String; = "Q1"

.field public static final CAR_CDU_TYPE_Q2_D21:Ljava/lang/String; = "Q2"

.field public static final CAR_CDU_TYPE_Q3_D55:Ljava/lang/String; = "Q3"

.field public static final CAR_CDU_TYPE_Q3_D55A:Ljava/lang/String; = "Q3A"

.field public static final CAR_CDU_TYPE_Q5_D20:Ljava/lang/String; = "Q5"

.field public static final CAR_CDU_TYPE_Q6_D22:Ljava/lang/String; = "Q6"

.field public static final CAR_CDU_TYPE_Q7_E38:Ljava/lang/String; = "Q7"

.field public static final CAR_CDU_TYPE_Q7_E38A:Ljava/lang/String; = "Q7A"

.field public static final CAR_CDU_TYPE_Q8_E28A:Ljava/lang/String; = "Q8"

.field public static final CAR_CDU_TYPE_Q8_E28B:Ljava/lang/String; = "Q8B"

.field public static final CAR_CDU_TYPE_Q9_F30:Ljava/lang/String; = "Q9"

.field public static final CAR_CDU_TYPE_QB_H93:Ljava/lang/String; = "QB"

.field public static final CAR_CDU_TYPE_QB_H93A:Ljava/lang/String; = "QBA"

.field public static final CAR_CDU_TYPE_QB_H93AE:Ljava/lang/String; = "QBAE"

.field public static final CAR_CDU_TYPE_QB_H93AS:Ljava/lang/String; = "QBAS"

.field public static final CAR_CDU_TYPE_QD_F57:Ljava/lang/String; = "QD"

.field public static final CAR_CDU_TYPE_QE_F01:Ljava/lang/String; = "QE"

.field public static final CAR_CDU_TYPE_QG_E29:Ljava/lang/String; = "QG"

.field public static final CAR_CDU_TYPE_QI_F30B:Ljava/lang/String; = "QI"

.field public static final CAR_CDU_TYPE_QL_E38B:Ljava/lang/String; = "QL"

.field public static final CAR_CDU_TYPE_QQ_V01:Ljava/lang/String; = "QQ"

.field public static final CAR_CDU_TYPE_QR_V02:Ljava/lang/String; = "QR"

.field public static final CAR_CDU_TYPE_QT_G01:Ljava/lang/String; = "QT"

.field public static final CAR_CDU_TYPE_QU_G02:Ljava/lang/String; = "QU"

.field public static final CAR_CDU_TYPE_QV_D01:Ljava/lang/String; = "QV"

.field public static final CAR_CDU_TYPE_QW_D01:Ljava/lang/String; = "QW"

.field public static final CAR_CDU_TYPE_QX_E28U:Ljava/lang/String; = "QX"

.field public static final CAR_CONFIGURATION_SERVICE:Ljava/lang/String; = "configuration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "car_device_policy_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_DRIVING_STATE_SERVICE:Ljava/lang/String; = "drivingstate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_EVS_SERVICE:Ljava/lang/String; = "car_evs_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_EXTRA_BROWSE_SERVICE_FOR_SESSION:Ljava/lang/String; = "android.media.session.BROWSE_SERVICE"

.field public static final CAR_EXTRA_CLUSTER_ACTIVITY_STATE:Ljava/lang/String; = "android.car.cluster.ClusterActivityState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_EXTRA_MEDIA_COMPONENT:Ljava/lang/String; = "android.car.intent.extra.MEDIA_COMPONENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_EXTRA_MEDIA_PACKAGE:Ljava/lang/String; = "android.car.intent.extra.MEDIA_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CAR_FACELIFT_ONE:I = 0x1

.field public static final CAR_GUARD_MODE_SERVICE:Ljava/lang/String; = "guard_mode"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_INPUT_SERVICE:Ljava/lang/String; = "android.car.input"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_INSTRUMENT_CLUSTER_SERVICE:Ljava/lang/String; = "cluster_service"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_INTELLIGENT_SERVICE:Ljava/lang/String; = "intelligent"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_INTENT_ACTION_MEDIA_TEMPLATE:Ljava/lang/String; = "android.car.intent.action.MEDIA_TEMPLATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_MEDIA_SERVICE:Ljava/lang/String; = "car_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_NAVIGATION_SERVICE:Ljava/lang/String; = "car_navigation_service"

.field public static final CAR_NOT_CONNECTED_EXCEPTION_MSG:Ljava/lang/String; = "CarNotConnected"

.field public static final CAR_OCCUPANT_ZONE_SERVICE:Ljava/lang/String; = "car_occupant_zone_service"

.field private static final CAR_ORIGIN:I = 0x0

.field public static final CAR_REGION_EU:Ljava/lang/String; = "EU"

.field public static final CAR_REGION_IA:Ljava/lang/String; = "IA"

.field public static final CAR_REGION_ZH:Ljava/lang/String; = "ZH"

.field private static final CAR_SERVICE_BINDER_POLLING_INTERVAL_MS:J = 0x32L

.field private static final CAR_SERVICE_BINDER_POLLING_MAX_RETRY:J = 0x64L

.field public static final CAR_SERVICE_BINDER_SERVICE_NAME:Ljava/lang/String; = "car_service"

.field private static final CAR_SERVICE_BIND_MAX_RETRY:J = 0x14L

.field private static final CAR_SERVICE_BIND_RETRY_INTERVAL_MS:J = 0x1f4L

.field private static final CAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.car.CarService"

.field public static final CAR_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "android.car.ICar"

.field private static final CAR_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.car"

.field public static final CAR_STAGE_A:Ljava/lang/String; = "A"

.field public static final CAR_STAGE_B:Ljava/lang/String; = "B"

.field public static final CAR_STAGE_C:Ljava/lang/String; = "C"

.field public static final CAR_STAGE_D:Ljava/lang/String; = "D"

.field public static final CAR_STAGE_E:Ljava/lang/String; = "E"

.field public static final CAR_STAGE_F:Ljava/lang/String; = "F"

.field public static final CAR_STAGE_P:Ljava/lang/String; = "P"

.field public static final CAR_STAGE_V:Ljava/lang/String; = "V"

.field public static final CAR_STAGE_X:Ljava/lang/String; = "X"

.field public static final CAR_TELEMETRY_SERVICE:Ljava/lang/String; = "car_telemetry_service"

.field public static final CAR_TRUST_AGENT_ENROLLMENT_SERVICE:Ljava/lang/String; = "trust_enroll"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_11M:Ljava/lang/String; = "11M"

.field public static final CAR_TYPE_D01:Ljava/lang/String; = "D01"

.field public static final CAR_TYPE_D01A:Ljava/lang/String; = "D01A"

.field public static final CAR_TYPE_D01M:Ljava/lang/String; = "D01M"

.field public static final CAR_TYPE_D02:Ljava/lang/String; = "D02"

.field public static final CAR_TYPE_D03:Ljava/lang/String; = "D03"

.field public static final CAR_TYPE_D10:Ljava/lang/String; = "D10"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D11:Ljava/lang/String; = "D11"

.field public static final CAR_TYPE_D20:Ljava/lang/String; = "D20"

.field public static final CAR_TYPE_D20P:Ljava/lang/String; = "D20P"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D20X:Ljava/lang/String; = "D20X"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D21:Ljava/lang/String; = "D21"

.field public static final CAR_TYPE_D21A:Ljava/lang/String; = "D21A"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_D21B:Ljava/lang/String; = "D21B"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_D21V:Ljava/lang/String; = "D21V"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D22:Ljava/lang/String; = "D22"

.field public static final CAR_TYPE_D22V:Ljava/lang/String; = "D22V"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_D25:Ljava/lang/String; = "D25"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_D55:Ljava/lang/String; = "D55"

.field public static final CAR_TYPE_D55A:Ljava/lang/String; = "D55A"

.field public static final CAR_TYPE_D55V:Ljava/lang/String; = "D55V"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_E28:Ljava/lang/String; = "E28"

.field public static final CAR_TYPE_E28A:Ljava/lang/String; = "E28A"

.field public static final CAR_TYPE_E28B:Ljava/lang/String; = "E28B"

.field public static final CAR_TYPE_E28U:Ljava/lang/String; = "E28U"

.field public static final CAR_TYPE_E28V:Ljava/lang/String; = "E28V"

.field public static final CAR_TYPE_E29:Ljava/lang/String; = "E29"

.field public static final CAR_TYPE_E36:Ljava/lang/String; = "E36"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_E38:Ljava/lang/String; = "E38"

.field public static final CAR_TYPE_E38A:Ljava/lang/String; = "E38A"

.field public static final CAR_TYPE_E38B:Ljava/lang/String; = "E38B"

.field public static final CAR_TYPE_E38V:Ljava/lang/String; = "E38V"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_F01:Ljava/lang/String; = "F01"

.field public static final CAR_TYPE_F01E:Ljava/lang/String; = "F01E"

.field public static final CAR_TYPE_F01S:Ljava/lang/String; = "F01S"

.field public static final CAR_TYPE_F30:Ljava/lang/String; = "F30"

.field public static final CAR_TYPE_F30B:Ljava/lang/String; = "F30B"

.field public static final CAR_TYPE_F30BE:Ljava/lang/String; = "F30BE"

.field public static final CAR_TYPE_F30BS:Ljava/lang/String; = "F30BS"

.field public static final CAR_TYPE_F30V:Ljava/lang/String; = "F30V"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_TYPE_F57:Ljava/lang/String; = "F57"

.field public static final CAR_TYPE_F57AES:Ljava/lang/String; = "F57AES"

.field public static final CAR_TYPE_G01:Ljava/lang/String; = "G01"

.field public static final CAR_TYPE_G02:Ljava/lang/String; = "G02"

.field public static final CAR_TYPE_H93:Ljava/lang/String; = "H93"

.field public static final CAR_TYPE_H93A:Ljava/lang/String; = "H93A"

.field public static final CAR_TYPE_H93AE:Ljava/lang/String; = "H93AE"

.field public static final CAR_TYPE_H93AS:Ljava/lang/String; = "H93AS"

.field public static final CAR_TYPE_V01:Ljava/lang/String; = "V01"

.field public static final CAR_TYPE_V02:Ljava/lang/String; = "V02"

.field public static final CAR_TYPE_V31:Ljava/lang/String; = "V31"

.field public static final CAR_USER_SERVICE:Ljava/lang/String; = "car_user_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_UX_RESTRICTION_SERVICE:Ljava/lang/String; = "uxrestriction"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_WAIT_TIMEOUT_DO_NOT_WAIT:J = 0x0L

.field public static final CAR_WAIT_TIMEOUT_WAIT_FOREVER:J = -0x1L

.field public static final CAR_WATCHDOG_SERVICE:Ljava/lang/String; = "car_watchdog"

.field private static final CFC_CAR_TYPE_H93A:I = 0x1f

.field private static final CFC_CAR_TYPE_H93AE:I = 0x32

.field private static final CFC_CAR_TYPE_H93AS:I = 0x21

.field private static final CFC_CAR_TYPE_PROPERTY:Ljava/lang/String; = "persist.sys.xiaopeng.projectConfigtaion"

.field public static final CLUSTER_HOME_SERVICE:Ljava/lang/String; = "cluster_home_service"

.field public static final CONNECTION_TYPE_EMBEDDED:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final EXTENDED_CAR_TYPE:Ljava/lang/String; = "persist.sys.xiaopeng.extendedCarType"

.field public static final FEATURE_REQUEST_ALREADY_IN_THE_STATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_REQUEST_MANDATORY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_REQUEST_NOT_EXISTING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_REQUEST_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final HARDWARE_SOFTWARE_VERSION_PROPERTY:Ljava/lang/String; = "ro.xiaopeng.software"

.field private static final HARDWARE_VERSION_PROPERTY:Ljava/lang/String; = "ro.boot.hw_version"

.field public static final HVAC_SERVICE:Ljava/lang/String; = "hvac"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INFO_SERVICE:Ljava/lang/String; = "info"

.field public static final META_DATA_DISTRACTION_OPTIMIZED:Ljava/lang/String; = "distractionOptimized"

.field public static final META_DATA_REQUIRES_CAR_FEATURE:Ljava/lang/String; = "requires-car-feature"

.field public static final OCCUPANT_AWARENESS_SERVICE:Ljava/lang/String; = "occupant_awareness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PACKAGE_SERVICE:Ljava/lang/String; = "package"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_ADJUST_RANGE_REMAINING:Ljava/lang/String; = "android.car.permission.ADJUST_RANGE_REMAINING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_BIND_VMS_CLIENT:Ljava/lang/String; = "android.car.permission.BIND_VMS_CLIENT"

.field public static final PERMISSION_CAR_CONTROL_AUDIO_SETTINGS:Ljava/lang/String; = "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_CONTROL_AUDIO_VOLUME:Ljava/lang/String; = "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DIAGNOSTIC_CLEAR:Ljava/lang/String; = "android.car.permission.CLEAR_CAR_DIAGNOSTICS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DIAGNOSTIC_READ_ALL:Ljava/lang/String; = "android.car.permission.CAR_DIAGNOSTICS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DISPLAY_IN_CLUSTER:Ljava/lang/String; = "android.car.permission.CAR_DISPLAY_IN_CLUSTER"

.field public static final PERMISSION_CAR_DRIVING_STATE:Ljava/lang/String; = "android.car.permission.CAR_DRIVING_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_DYNAMICS_STATE:Ljava/lang/String; = "android.car.permission.CAR_DYNAMICS_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_ENGINE_DETAILED:Ljava/lang/String; = "android.car.permission.CAR_ENGINE_DETAILED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_ENROLL_TRUST:Ljava/lang/String; = "android.car.permission.CAR_ENROLL_TRUST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_EPOCH_TIME:Ljava/lang/String; = "android.car.permission.CAR_EPOCH_TIME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_INFO:Ljava/lang/String; = "android.car.permission.CAR_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_INSTRUMENT_CLUSTER_CONTROL:Ljava/lang/String; = "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_MONITOR_CLUSTER_NAVIGATION_STATE:Ljava/lang/String; = "android.car.permission.CAR_MONITOR_CLUSTER_NAVIGATION_STATE"

.field public static final PERMISSION_CAR_MONITOR_INPUT:Ljava/lang/String; = "android.car.permission.CAR_MONITOR_INPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_NAVIGATION_MANAGER:Ljava/lang/String; = "android.car.permission.CAR_NAVIGATION_MANAGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_POWER:Ljava/lang/String; = "android.car.permission.CAR_POWER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_PROJECTION:Ljava/lang/String; = "android.car.permission.CAR_PROJECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_PROJECTION_STATUS:Ljava/lang/String; = "android.car.permission.ACCESS_CAR_PROJECTION_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_TEST_SERVICE:Ljava/lang/String; = "android.car.permission.CAR_TEST_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CAR_UX_RESTRICTIONS_CONFIGURATION:Ljava/lang/String; = "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

.field public static final PERMISSION_COLLECT_CAR_WATCHDOG_METRICS:Ljava/lang/String; = "android.car.permission.COLLECT_CAR_WATCHDOG_METRICS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_APP_BLOCKING:Ljava/lang/String; = "android.car.permission.CONTROL_APP_BLOCKING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_APP_LAUNCH:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_APP_LAUNCH"

.field public static final PERMISSION_CONTROL_CAR_CLIMATE:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_CLIMATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_DOORS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_DOORS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_EVS_ACTIVITY:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_EVS_ACTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_FEATURES:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_FEATURES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_MIRRORS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_MIRRORS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_OCCUPANT_AWARENESS_SYSTEM:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_OCCUPANT_AWARENESS_SYSTEM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_POWER_POLICY:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_POWER_POLICY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_SEATS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_SEATS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_WATCHDOG_CONFIG:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_WATCHDOG_CONFIG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_CAR_WINDOWS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_WINDOWS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_DISPLAY_UNITS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_DISPLAY_UNITS"

.field public static final PERMISSION_CONTROL_ENERGY_PORTS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_ENERGY_PORTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_EXTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_CONTROL_INTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CONTROL_CAR_INTERIOR_LIGHTS"

.field public static final PERMISSION_ENERGY:Ljava/lang/String; = "android.car.permission.CAR_ENERGY"

.field public static final PERMISSION_ENERGY_PORTS:Ljava/lang/String; = "android.car.permission.CAR_ENERGY_PORTS"

.field public static final PERMISSION_EXTERIOR_ENVIRONMENT:Ljava/lang/String; = "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

.field public static final PERMISSION_EXTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.CAR_EXTERIOR_LIGHTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_IDENTIFICATION:Ljava/lang/String; = "android.car.permission.CAR_IDENTIFICATION"

.field public static final PERMISSION_MILEAGE:Ljava/lang/String; = "android.car.permission.CAR_MILEAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_MOCK_VEHICLE_HAL:Ljava/lang/String; = "android.car.permission.CAR_MOCK_VEHICLE_HAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERMISSION_MONITOR_CAR_EVS_STATUS:Ljava/lang/String; = "android.car.permission.MONITOR_CAR_EVS_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_MONITOR_INPUT:Ljava/lang/String; = "android.permission.MONITOR_INPUT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_POWERTRAIN:Ljava/lang/String; = "android.car.permission.CAR_POWERTRAIN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_READ_CAR_OCCUPANT_AWARENESS_STATE:Ljava/lang/String; = "android.car.permission.READ_CAR_OCCUPANT_AWARENESS_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_READ_CAR_POWER_POLICY:Ljava/lang/String; = "android.car.permission.READ_CAR_POWER_POLICY"

.field public static final PERMISSION_READ_CAR_VENDOR_PERMISSION_INFO:Ljava/lang/String; = "android.car.permission.READ_CAR_VENDOR_PERMISSION_INFO"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_READ_DISPLAY_UNITS:Ljava/lang/String; = "android.car.permission.READ_CAR_DISPLAY_UNITS"

.field public static final PERMISSION_READ_INTERIOR_LIGHTS:Ljava/lang/String; = "android.car.permission.READ_CAR_INTERIOR_LIGHTS"

.field public static final PERMISSION_READ_STEERING_STATE:Ljava/lang/String; = "android.car.permission.READ_CAR_STEERING"

.field public static final PERMISSION_RECEIVE_CAR_AUDIO_DUCKING_EVENTS:Ljava/lang/String; = "android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_REQUEST_CAR_EVS_ACTIVITY:Ljava/lang/String; = "android.car.permission.REQUEST_CAR_EVS_ACTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_SPEED:Ljava/lang/String; = "android.car.permission.CAR_SPEED"

.field public static final PERMISSION_STORAGE_ENCRYPTION_BINDING_SEED:Ljava/lang/String; = "android.car.permission.STORAGE_ENCRYPTION_BINDING_SEED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_STORAGE_MONITORING:Ljava/lang/String; = "android.car.permission.STORAGE_MONITORING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_TEMPLATE_RENDERER:Ljava/lang/String; = "android.car.permission.TEMPLATE_RENDERER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_TIRES:Ljava/lang/String; = "android.car.permission.CAR_TIRES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_USE_CAR_EVS_CAMERA:Ljava/lang/String; = "android.car.permission.USE_CAR_EVS_CAMERA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_USE_CAR_TELEMETRY_SERVICE:Ljava/lang/String; = "com.android.car.permission.USE_CAR_TELEMETRY_SERVICE"

.field public static final PERMISSION_USE_CAR_WATCHDOG:Ljava/lang/String; = "android.car.permission.USE_CAR_WATCHDOG"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VENDOR_EXTENSION:Ljava/lang/String; = "android.car.permission.CAR_VENDOR_EXTENSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VMS_PUBLISHER:Ljava/lang/String; = "android.car.permission.VMS_PUBLISHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_VMS_SUBSCRIBER:Ljava/lang/String; = "android.car.permission.VMS_SUBSCRIBER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final PRIVATE_UUID_CODE_PROPERTY:Ljava/lang/String; = "persist.sys.hardware.uuid"

.field public static final PROJECTION_SERVICE:Ljava/lang/String; = "projection"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final PROPERTY_CAR_TYPE:Ljava/lang/String; = "persist.sys.xiaopeng.car_type"

.field public static final PROPERTY_SERVICE:Ljava/lang/String; = "property"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REGION_EU:Ljava/lang/String; = "EU"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field public static final STORAGE_MONITORING_SERVICE:Ljava/lang/String; = "storage_monitoring"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final SYSTEM_BOOT_FIRST_PROPERTY:Ljava/lang/String; = "persist.sys.boot.first"

.field public static final TEST_SERVICE:Ljava/lang/String; = "car-service-test"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VEHICLE_MAP_SERVICE:Ljava/lang/String; = "vehicle_map_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VENDOR_EXTENSION_SERVICE:Ljava/lang/String; = "vendor_extension"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VMS_SUBSCRIBER_SERVICE:Ljava/lang/String; = "vehicle_map_subscriber_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_AMP_SERVICE:Ljava/lang/String; = "xp_amp"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_ATL_SERVICE:Ljava/lang/String; = "xp_atl"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_AVAS_SERVICE:Ljava/lang/String; = "xp_avas"

.field public static final XP_AVM_SERVICE:Ljava/lang/String; = "xp_avm"

.field public static final XP_BCM_SERVICE:Ljava/lang/String; = "xp_bcm"

.field public static final XP_BMS_SERVICE:Ljava/lang/String; = "xp_bms"

.field public static final XP_CAN_SERVICE:Ljava/lang/String; = "xp_can"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_CARE_MODE_SERVICE:Ljava/lang/String; = "xp_care_mode_service"

.field public static final XP_CAR_API_VERSION:Ljava/lang/String; = "1.0_20230301"

.field public static final XP_CCS_SERVICE:Ljava/lang/String; = "xp_ccs"

.field public static final XP_CDC_SERVICE:Ljava/lang/String; = "xp_cdc"

.field public static final XP_CIU_SERVICE:Ljava/lang/String; = "xp_ciu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_CONDITION_SERVICE:Ljava/lang/String; = "xp_condition"

.field public static final XP_DCDC_SERVICE:Ljava/lang/String; = "xp_dcdc"

.field public static final XP_DHC_SERVICE:Ljava/lang/String; = "xp_dhc"

.field public static final XP_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "xp_diagnostic"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_ENERGY_CONSP_SERVICE:Ljava/lang/String; = "xp_energy_consp_service"

.field public static final XP_EPS_SERVICE:Ljava/lang/String; = "xp_eps"

.field public static final XP_ESP_SERVICE:Ljava/lang/String; = "xp_esp"

.field public static final XP_HUD_SERVICE:Ljava/lang/String; = "xp_hud"

.field public static final XP_ICM_SERVICE:Ljava/lang/String; = "xp_icm"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_IMU_SERVICE:Ljava/lang/String; = "xp_imu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_INPUT_SERVICE:Ljava/lang/String; = "xp_input"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_IPU_SERVICE:Ljava/lang/String; = "xp_ipu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_LEAVE_MODE_SERVICE:Ljava/lang/String; = "xp_leave_mode_service"

.field public static final XP_LLU_SERVICE:Ljava/lang/String; = "xp_llu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_MCU_SERVICE:Ljava/lang/String; = "xp_mcu"

.field public static final XP_MONA_SERVICE:Ljava/lang/String; = "xp_mona"

.field public static final XP_MSB_SERVICE:Ljava/lang/String; = "xp_msb"

.field public static final XP_MSM_SERVICE:Ljava/lang/String; = "xp_msm"

.field public static final XP_RADIO_SERVICE:Ljava/lang/String; = "xp_radio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_REMIND_SERVICE:Ljava/lang/String; = "xp_remind"

.field public static final XP_REMOTE_CONTROL_SERVICE:Ljava/lang/String; = "xp_remote_control_service"

.field public static final XP_SCU_SERVICE:Ljava/lang/String; = "xp_scu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_SHARED_MEMORY_SERVICE:Ljava/lang/String; = "xp_shared_memory"

.field public static final XP_SPC_SERVICE:Ljava/lang/String; = "xp_spc"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_SRS_SERVICE:Ljava/lang/String; = "xp_srs"

.field public static final XP_TBOX_SERVICE:Ljava/lang/String; = "xp_tbox"

.field public static final XP_TIME_SERVICE:Ljava/lang/String; = "xp_time"

.field public static final XP_TPMS_SERVICE:Ljava/lang/String; = "xp_tpms"

.field public static final XP_VCU_SERVICE:Ljava/lang/String; = "xp_vcu"

.field public static final XP_VEHICLE_SERVICE:Ljava/lang/String; = "xp_vehicle"

.field public static final XP_VLMU_SERVICE:Ljava/lang/String; = "xp_vlmu"

.field public static final XP_VPM_SERVICE:Ljava/lang/String; = "xp_vpm"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final XP_XPU_SERVICE:Ljava/lang/String; = "xp_xpu"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mConnectionRetryCount:I

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I

.field private final mConstructionStack:Ljava/lang/Exception;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mFeatures:Landroid/car/CarFeatures;

.field private mIXpService:Landroid/os/IBinder;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private mService:Landroid/car/ICar;

.field private mServiceBound:Z

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V
    .locals 1

    .line 2909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2494
    iput-object v0, p0, Landroid/car/Car;->mPackageName:Ljava/lang/String;

    .line 2498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    .line 2513
    new-instance v0, Landroid/car/Car$1;

    invoke-direct {v0, p0}, Landroid/car/Car$1;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 2520
    new-instance v0, Landroid/car/Car$2;

    invoke-direct {v0, p0}, Landroid/car/Car$2;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 2528
    new-instance v0, Landroid/car/Car$3;

    invoke-direct {v0, p0}, Landroid/car/Car$3;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 2606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    .line 2616
    new-instance v0, Landroid/car/CarFeatures;

    invoke-direct {v0}, Landroid/car/CarFeatures;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mFeatures:Landroid/car/CarFeatures;

    .line 2910
    iput-object p1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 2912
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mPackageName:Ljava/lang/String;

    .line 2914
    :cond_0
    invoke-static {p5}, Landroid/car/Car;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    .line 2915
    invoke-static {p1}, Landroid/car/Car;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 2917
    iput-object p2, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    .line 2919
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    :try_start_0
    const-string/jumbo p1, "xp_vehicle"

    .line 2921
    invoke-interface {p2, p1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mIXpService:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2923
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 2924
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "get xp service failed! "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAR.L"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2927
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    .line 2929
    :goto_0
    iput-object p3, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 2930
    iput-object p4, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 2934
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 2936
    iput-object p1, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/ICar;Landroid/os/Handler;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2946
    invoke-direct/range {v0 .. v5}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Landroid/car/Car;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Landroid/car/Car;->startCarService()V

    return-void
.end method

.method static synthetic access$100(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/car/Car;)Landroid/car/CarFeatures;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mFeatures:Landroid/car/CarFeatures;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/car/Car;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Landroid/car/Car;->handleCarDisconnectLocked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/Car;)Ljava/lang/Runnable;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/car/Car;)Landroid/os/Handler;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/Car;)Ljava/lang/Object;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroid/car/Car;)Landroid/car/ICar;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p0
.end method

.method static synthetic access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;
    .locals 0

    .line 154
    iput-object p1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p1
.end method

.method static synthetic access$400(Landroid/car/Car;)I
    .locals 0

    .line 154
    iget p0, p0, Landroid/car/Car;->mConnectionState:I

    return p0
.end method

.method static synthetic access$402(Landroid/car/Car;I)I
    .locals 0

    .line 154
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    return p1
.end method

.method static synthetic access$502(Landroid/car/Car;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 154
    iput-object p1, p0, Landroid/car/Car;->mIXpService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$600(Landroid/car/Car;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/Car;)Ljava/util/HashMap;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    return-object p0
.end method

.method static synthetic access$900(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private static assertNonNullContext(Landroid/content/Context;)V
    .locals 1

    .line 2888
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/ContextWrapper;

    .line 2890
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "ContextWrapper with null base passed as Context, forgot to set base Context?"

    .line 2891
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private constructCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;
    .locals 6

    .line 3658
    :try_start_0
    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3659
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 3660
    const-class v3, Landroid/car/Car;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p2, v1, v5

    .line 3661
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/car/CarManagerBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    goto :goto_0

    :catch_4
    move-exception p2

    .line 3665
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot construct CarManager, class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAR.L"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static createCar(Landroid/content/Context;)Landroid/car/Car;
    .locals 1

    const/4 v0, 0x0

    .line 2677
    check-cast v0, Landroid/os/Handler;

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object p0

    return-object p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2663
    invoke-static {p0, p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object p0

    return-object p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2637
    invoke-static {p0}, Landroid/car/Car;->assertNonNullContext(Landroid/content/Context;)V

    .line 2638
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CAR.L"

    const-string p1, "FEATURE_AUTOMOTIVE not declared while android.car is used"

    .line 2639
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2643
    :cond_0
    :try_start_0
    new-instance v0, Landroid/car/Car;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;)Landroid/car/Car;
    .locals 11

    .line 2695
    invoke-static {p0}, Landroid/car/Car;->assertNonNullContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    const-string v4, "car_service"

    .line 2701
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v3, :cond_0

    .line 2704
    new-instance v3, Landroid/car/Car;

    invoke-static {v4}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    :cond_0
    const-wide/16 v5, 0x32

    if-eqz v4, :cond_3

    if-nez v0, :cond_1

    .line 2710
    invoke-direct {v3}, Landroid/car/Car;->startCarService()V

    return-object v3

    .line 2736
    :cond_1
    monitor-enter v3

    .line 2737
    :try_start_0
    iget-object p0, v3, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez p0, :cond_2

    .line 2738
    invoke-static {v4}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object p0

    iput-object p0, v3, Landroid/car/Car;->mService:Landroid/car/ICar;

    const-string p0, "CAR.L"

    .line 2739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waited for car_service (ms):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-long v0, v2

    mul-long/2addr v0, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2743
    invoke-static {v3}, Landroid/car/Car;->setIXpService(Landroid/car/Car;)V

    :cond_2
    const/4 p0, 0x2

    .line 2745
    iput p0, v3, Landroid/car/Car;->mConnectionState:I

    .line 2746
    monitor-exit v3

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-nez v0, :cond_4

    .line 2716
    invoke-direct {v3}, Landroid/car/Car;->startCarService()V

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    int-to-long v7, v2

    const-wide/16 v9, 0x64

    cmp-long v4, v7, v9

    if-lez v4, :cond_5

    const-string p0, "CAR.L"

    const-string p1, "cannot get car_service, waited for car service (ms):5000"

    .line 2721
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 2728
    :cond_5
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CAR.L"

    const-string p1, "interrupted while waiting for car_service"

    .line 2730
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;
    .locals 21

    move-wide/from16 v0, p2

    .line 2794
    invoke-static/range {p0 .. p0}, Landroid/car/Car;->assertNonNullContext(Landroid/content/Context;)V

    .line 2795
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x32

    if-lez v4, :cond_0

    .line 2802
    div-long v7, v0, v5

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v2

    .line 2808
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const/4 v12, 0x0

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v12

    :goto_1
    const/4 v10, 0x0

    move v13, v12

    :goto_2
    const-string v14, "car_service"

    .line 2810
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    if-nez v10, :cond_3

    .line 2813
    new-instance v10, Landroid/car/Car;

    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v17

    const/16 v18, 0x0

    move-object v15, v10

    move-object/from16 v16, p0

    move-object/from16 v19, p4

    move-object/from16 v20, p1

    invoke-direct/range {v15 .. v20}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    :cond_3
    if-eqz v14, :cond_6

    if-nez v12, :cond_4

    .line 2818
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    .line 2821
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    return-object v10

    .line 2856
    :cond_4
    iget-object v15, v10, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    const-string v0, "CAR.L"

    .line 2857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waited for car_service (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v13

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2862
    iget-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v0, :cond_5

    .line 2863
    monitor-exit v15

    return-object v10

    .line 2868
    :cond_5
    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v0

    iput-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v0, 0x2

    .line 2869
    iput v0, v10, Landroid/car/Car;->mConnectionState:I

    .line 2870
    invoke-static {v10}, Landroid/car/Car;->setIXpService(Landroid/car/Car;)V

    .line 2871
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2872
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    return-object v10

    :catchall_0
    move-exception v0

    .line 2871
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-nez v12, :cond_7

    .line 2828
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    const/4 v12, 0x1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-gez v4, :cond_8

    int-to-long v14, v13

    const-wide/16 v16, 0x64

    cmp-long v18, v14, v16

    if-ltz v18, :cond_8

    .line 2832
    rem-long v16, v14, v16

    cmp-long v16, v16, v2

    if-nez v16, :cond_8

    const-string v2, "CAR.L"

    .line 2835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-long/2addr v14, v5

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    if-ltz v4, :cond_a

    int-to-long v2, v13

    cmp-long v2, v2, v7

    if-lez v2, :cond_a

    if-lez v4, :cond_9

    const-string v2, "CAR.L"

    .line 2840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-object v10

    .line 2848
    :cond_a
    :goto_3
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 2850
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "CAR.L"

    const-string v1, "interrupted"

    .line 2851
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method private createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 3340
    invoke-direct {p0}, Landroid/car/Car;->getIXpVehicleServiceOrThrow()Landroid/os/IBinder;

    move-result-object v5

    .line 3341
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "vehicle_map_service"

    const-string v3, "audio"

    const/16 v6, 0x1d

    const-string v7, "property"

    const/4 v8, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "xp_radio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x50

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "xp_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x4f

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0x4e

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "xp_remote_control_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x4d

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "configuration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x4c

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "trust_enroll"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x4b

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "app_focus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0x4a

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "car_bugreport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x49

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "android.car.input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x48

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "cluster_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v8, 0x47

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "cluster_home_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0x46

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "xp_remind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v8, 0x45

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "car_evs_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0x44

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "car_watchdog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v8, 0x43

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "intelligent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v8, 0x42

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "uxrestriction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v8, 0x41

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "xp_condition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v8, 0x40

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "car_user_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v8, 0x3f

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "vehicle_map_subscriber_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v8, 0x3e

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "xp_diagnostic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v8, 0x3d

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "ai_auto_wake"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v8, 0x3c

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v8, 0x3b

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "cabin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v8, 0x3a

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v8, 0x39

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "ai_vehicle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v8, 0x38

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v8, 0x37

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "hvac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v8, 0x36

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "imm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v8, 0x35

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "car_device_policy_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v8, 0x34

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v1, "storage_monitoring"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v8, 0x33

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "car_media"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v8, 0x32

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "car_occupant_zone_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v8, 0x31

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "drivingstate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v8, 0x30

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "car-service-test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v8, 0x2f

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v8, 0x2e

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v1, "xp_vpm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v8, 0x2d

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v1, "xp_vcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v8, 0x2c

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v1, "xp_srs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v8, 0x2b

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v1, "xp_spc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v8, 0x2a

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v1, "xp_scu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v8, 0x29

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v1, "xp_msm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v8, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v1, "xp_msb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v8, 0x27

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v8, 0x26

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v1, "xp_llu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v8, 0x25

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v1, "xp_ipu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v8, 0x24

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v1, "xp_imu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v8, 0x23

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v1, "xp_icm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v8, 0x22

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v1, "xp_hud"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v8, 0x21

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v1, "xp_esp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v8, 0x20

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v1, "xp_eps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v8, 0x1f

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v1, "xp_dhc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v8, 0x1e

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v1, "xp_ciu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto/16 :goto_0

    :cond_33
    move v8, v6

    goto/16 :goto_0

    :sswitch_34
    const-string/jumbo v1, "xp_cdc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v8, 0x1c

    goto/16 :goto_0

    :sswitch_35
    const-string/jumbo v1, "xp_ccs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v8, 0x1b

    goto/16 :goto_0

    :sswitch_36
    const-string/jumbo v1, "xp_can"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v8, 0x1a

    goto/16 :goto_0

    :sswitch_37
    const-string/jumbo v1, "xp_bms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v8, 0x19

    goto/16 :goto_0

    :sswitch_38
    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v8, 0x18

    goto/16 :goto_0

    :sswitch_39
    const-string/jumbo v1, "xp_avm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v8, 0x17

    goto/16 :goto_0

    :sswitch_3a
    const-string/jumbo v1, "xp_atl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v8, 0x16

    goto/16 :goto_0

    :sswitch_3b
    const-string/jumbo v1, "xp_amp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v8, 0x15

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v8, 0x14

    goto/16 :goto_0

    :sswitch_3d
    const-string/jumbo v1, "vendor_extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v8, 0x13

    goto/16 :goto_0

    :sswitch_3e
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v8, 0x12

    goto/16 :goto_0

    :sswitch_3f
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_40
    const-string v1, "car_activity_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_41
    const-string/jumbo v1, "xp_energy_consp_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "car_telemetry_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "guard_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "diagnostic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_45
    const-string v1, "occupant_awareness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_46
    const-string/jumbo v1, "xp_leave_mode_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_47
    const-string/jumbo v1, "xp_care_mode_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_48
    const-string v1, "car_navigation_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_49
    const-string v1, "car_bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_0

    :cond_49
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_4a
    const-string/jumbo v1, "xp_vlmu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_0

    :cond_4a
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_4b
    const-string/jumbo v1, "xp_tpms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_0

    :cond_4b
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_4c
    const-string/jumbo v1, "xp_tbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_0

    :cond_4c
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_4d
    const-string/jumbo v1, "xp_mona"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_0

    :cond_4d
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4e
    const-string/jumbo v1, "xp_dcdc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_0

    :cond_4e
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_4f
    const-string/jumbo v1, "xp_avas"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_0

    :cond_4f
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_50
    const-string v1, "projection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_0

    :cond_50
    const/4 v8, 0x0

    :goto_0
    const-string/jumbo v1, "xp_shared_memory"

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    .line 3638
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    invoke-interface {v1, p1}, Landroid/car/ICar;->getCarManagerClassForFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_51

    .line 3644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot construct CarManager for service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : no class defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.L"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 3648
    :cond_51
    invoke-direct {p0, v1, p2}, Landroid/car/Car;->constructCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;

    move-result-object v9

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 3640
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-object v9

    .line 3525
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 3526
    invoke-interface {v0, v3}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3527
    new-instance v8, Landroid/car/hardware/radio/CarRadioManager;

    iget-object v6, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/car/hardware/radio/CarRadioManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v9, v8

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 3529
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto/16 :goto_4

    .line 3563
    :pswitch_1
    new-instance v9, Landroid/car/hardware/input/CarInputManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/input/CarInputManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3393
    :pswitch_2
    new-instance v9, Landroid/car/vms/VmsClientManager;

    invoke-direct {v9, p0, p2}, Landroid/car/vms/VmsClientManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3620
    :pswitch_3
    new-instance v9, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3412
    :pswitch_4
    new-instance v9, Landroid/car/settings/CarConfigurationManager;

    invoke-direct {v9, p0, p2}, Landroid/car/settings/CarConfigurationManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3415
    :pswitch_5
    new-instance v9, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    invoke-direct {v9, p0, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3352
    :pswitch_6
    new-instance v9, Landroid/car/CarAppFocusManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarAppFocusManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3424
    :pswitch_7
    new-instance v9, Landroid/car/CarBugreportManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarBugreportManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3433
    :pswitch_8
    new-instance v9, Landroid/car/input/CarInputManager;

    invoke-direct {v9, p0, p2}, Landroid/car/input/CarInputManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3385
    :pswitch_9
    new-instance v9, Landroid/car/cluster/CarInstrumentClusterManager;

    invoke-direct {v9, p0, p2}, Landroid/car/cluster/CarInstrumentClusterManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3439
    :pswitch_a
    new-instance v9, Landroid/car/cluster/ClusterHomeManager;

    invoke-direct {v9, p0, p2}, Landroid/car/cluster/ClusterHomeManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3599
    :pswitch_b
    new-instance v9, Landroid/car/xpeng/remind/CarRemindManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, p2, v0, v1}, Landroid/car/xpeng/remind/CarRemindManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3442
    :pswitch_c
    new-instance v9, Landroid/car/evs/CarEvsManager;

    invoke-direct {v9, p0, p2}, Landroid/car/evs/CarEvsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3430
    :pswitch_d
    new-instance v9, Landroid/car/watchdog/CarWatchdogManager;

    invoke-direct {v9, p0, p2}, Landroid/car/watchdog/CarWatchdogManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3593
    :pswitch_e
    new-instance v9, Landroid/car/intelligent/CarIntelligentEngineManager;

    invoke-direct {v9, p0, p2}, Landroid/car/intelligent/CarIntelligentEngineManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3409
    :pswitch_f
    new-instance v9, Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-direct {v9, p0, p2}, Landroid/car/drivingstate/CarUxRestrictionsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3590
    :pswitch_10
    new-instance v9, Landroid/car/hardware/condition/CarConditionManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/condition/CarConditionManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3427
    :pswitch_11
    new-instance v9, Landroid/car/user/CarUserManager;

    invoke-direct {v9, p0, p2}, Landroid/car/user/CarUserManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3397
    :pswitch_12
    invoke-virtual {p0, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsClientManager;

    .line 3396
    invoke-static {p0, v0}, Landroid/car/vms/VmsSubscriberManager;->wrap(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)Landroid/car/vms/VmsSubscriberManager;

    move-result-object v9

    goto/16 :goto_4

    .line 3552
    :pswitch_13
    :try_start_2
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 3553
    invoke-interface {v0, v7}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 3554
    new-instance v0, Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v5, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/car/diagnostic/XpDiagnosticManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v9, v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .line 3556
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto/16 :goto_4

    .line 3605
    :pswitch_14
    new-instance v9, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3373
    :pswitch_15
    new-instance v9, Landroid/car/hardware/power/CarPowerManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/power/CarPowerManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3364
    :pswitch_16
    new-instance v9, Landroid/car/hardware/cabin/CarCabinManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/cabin/CarCabinManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3343
    :pswitch_17
    new-instance v9, Landroid/car/media/CarAudioManager;

    invoke-direct {v9, p0, p2}, Landroid/car/media/CarAudioManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3602
    :pswitch_18
    new-instance v9, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/ai/vehicle/CarAIVehicleManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3349
    :pswitch_19
    new-instance v9, Landroid/car/CarInfoManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarInfoManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3370
    :pswitch_1a
    new-instance v9, Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/hvac/CarHvacManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3609
    :pswitch_1b
    :try_start_3
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 3610
    invoke-interface {v0, v7}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 3611
    new-instance v0, Landroid/car/xpeng/imm/CarImmManager;

    iget-object v6, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/car/xpeng/imm/CarImmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 3613
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto/16 :goto_4

    .line 3436
    :pswitch_1c
    new-instance v9, Landroid/car/admin/CarDevicePolicyManager;

    invoke-direct {v9, p0, p2}, Landroid/car/admin/CarDevicePolicyManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3403
    :pswitch_1d
    new-instance v9, Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    invoke-direct {v9, p0, p2}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3421
    :pswitch_1e
    new-instance v9, Landroid/car/media/CarMediaManager;

    invoke-direct {v9, p0, p2}, Landroid/car/media/CarMediaManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3358
    :pswitch_1f
    new-instance v9, Landroid/car/CarOccupantZoneManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarOccupantZoneManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3406
    :pswitch_20
    new-instance v9, Landroid/car/drivingstate/CarDrivingStateManager;

    invoke-direct {v9, p0, p2}, Landroid/car/drivingstate/CarDrivingStateManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3390
    :pswitch_21
    new-instance v9, Landroid/car/test/CarTestManagerBinderWrapper;

    invoke-direct {v9, p0, p2}, Landroid/car/test/CarTestManagerBinderWrapper;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3572
    :pswitch_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_52

    .line 3574
    new-instance v9, Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/xpu/CarXpuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3577
    :cond_52
    :try_start_4
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 3578
    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3579
    new-instance v8, Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v6, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Landroid/car/hardware/xpu/CarXpuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    .line 3582
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto/16 :goto_4

    .line 3506
    :pswitch_23
    new-instance v9, Landroid/car/hardware/vpm/CarVpmManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/vpm/CarVpmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3548
    :pswitch_24
    new-instance v9, Landroid/car/hardware/vcu/CarVcuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/vcu/CarVcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3503
    :pswitch_25
    new-instance v9, Landroid/car/hardware/srs/CarSrsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/srs/CarSrsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3569
    :pswitch_26
    new-instance v9, Landroid/car/hardware/spc/CarSpcManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/spc/CarSpcManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3533
    :pswitch_27
    new-instance v9, Landroid/car/hardware/scu/CarScuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/scu/CarScuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3509
    :pswitch_28
    new-instance v9, Landroid/car/hardware/msm/CarMsmManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/msm/CarMsmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3512
    :pswitch_29
    new-instance v9, Landroid/car/hardware/msb/CarMsbManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/msb/CarMsbManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3521
    :pswitch_2a
    new-instance v9, Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/mcu/CarMcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3500
    :pswitch_2b
    new-instance v9, Landroid/car/hardware/llu/CarLluManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/llu/CarLluManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3491
    :pswitch_2c
    new-instance v9, Landroid/car/hardware/ipu/CarIpuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/ipu/CarIpuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3566
    :pswitch_2d
    new-instance v9, Landroid/car/hardware/imu/CarImuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/imu/CarImuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3477
    :pswitch_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_53

    .line 3479
    new-instance v9, Landroid/car/hardware/icm/CarIcmManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/icm/CarIcmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3482
    :cond_53
    :try_start_5
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    .line 3483
    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3484
    new-instance v8, Landroid/car/hardware/icm/CarIcmManager;

    iget-object v6, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Landroid/car/hardware/icm/CarIcmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    .line 3486
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto/16 :goto_4

    .line 3587
    :pswitch_2f
    new-instance v9, Landroid/car/hardware/hud/CarHudManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/hud/CarHudManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3474
    :pswitch_30
    new-instance v9, Landroid/car/hardware/esp/CarEspManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/esp/CarEspManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3471
    :pswitch_31
    new-instance v9, Landroid/car/hardware/eps/CarEpsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/eps/CarEpsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3518
    :pswitch_32
    new-instance v9, Landroid/car/hardware/dhc/CarDhcManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/dhc/CarDhcManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3560
    :pswitch_33
    new-instance v9, Landroid/car/hardware/ciu/CarCiuManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/ciu/CarCiuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3515
    :pswitch_34
    new-instance v9, Landroid/car/hardware/cdc/CarCdcManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/cdc/CarCdcManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3465
    :pswitch_35
    new-instance v9, Landroid/car/hardware/ccs/CarCcsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/ccs/CarCcsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3462
    :pswitch_36
    new-instance v9, Landroid/car/hardware/can/CarCanManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/can/CarCanManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3459
    :pswitch_37
    new-instance v9, Landroid/car/hardware/bms/CarBmsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/bms/CarBmsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3456
    :pswitch_38
    new-instance v9, Landroid/car/hardware/bcm/CarBcmManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/bcm/CarBcmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3453
    :pswitch_39
    new-instance v9, Landroid/car/hardware/avm/CarAvmManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/avm/CarAvmManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3494
    :pswitch_3a
    new-instance v9, Landroid/car/hardware/atl/CarAtlManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/atl/CarAtlManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3497
    :pswitch_3b
    new-instance v9, Landroid/car/hardware/amp/CarAmpManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/amp/CarAmpManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3355
    :pswitch_3c
    new-instance v9, Landroid/car/content/pm/CarPackageManager;

    invoke-direct {v9, p0, p2}, Landroid/car/content/pm/CarPackageManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3382
    :pswitch_3d
    new-instance v9, Landroid/car/hardware/CarVendorExtensionManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/CarVendorExtensionManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3346
    :pswitch_3e
    new-instance v9, Landroid/car/hardware/CarSensorManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/CarSensorManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3379
    :pswitch_3f
    new-instance v9, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p2}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object v0

    invoke-direct {v9, p0, v0}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V

    goto/16 :goto_4

    .line 3448
    :pswitch_40
    new-instance v0, Landroid/car/app/CarActivityManager;

    invoke-direct {v0, p0, p2}, Landroid/car/app/CarActivityManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 3629
    :pswitch_41
    new-instance v9, Landroid/car/xpeng/energy/CarEnergyConspManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/energy/CarEnergyConspManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3445
    :pswitch_42
    new-instance v9, Landroid/car/telemetry/CarTelemetryManager;

    invoke-direct {v9, p0, p2}, Landroid/car/telemetry/CarTelemetryManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3596
    :pswitch_43
    new-instance v9, Landroid/car/xpeng/guard/CarGuardModeManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3367
    :pswitch_44
    new-instance v9, Landroid/car/diagnostic/AospCarDiagnosticManager;

    invoke-direct {v9, p0, p2}, Landroid/car/diagnostic/AospCarDiagnosticManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3418
    :pswitch_45
    new-instance v9, Landroid/car/occupantawareness/OccupantAwarenessManager;

    invoke-direct {v9, p0, p2}, Landroid/car/occupantawareness/OccupantAwarenessManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3626
    :pswitch_46
    new-instance v9, Landroid/car/xpeng/mode/CarLeaveModeManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/mode/CarLeaveModeManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3617
    :pswitch_47
    new-instance v9, Landroid/car/xpeng/mode/CarCareModeManager;

    invoke-direct {v9, p0, p2}, Landroid/car/xpeng/mode/CarCareModeManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3361
    :pswitch_48
    new-instance v9, Landroid/car/navigation/CarNavigationStatusManager;

    invoke-direct {v9, p0, p2}, Landroid/car/navigation/CarNavigationStatusManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3400
    :pswitch_49
    new-instance v9, Landroid/car/CarBluetoothManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarBluetoothManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3632
    :pswitch_4a
    new-instance v9, Landroid/car/hardware/vlmu/CarVlmuManager;

    invoke-direct {v9, p0, p2}, Landroid/car/hardware/vlmu/CarVlmuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 3536
    :pswitch_4b
    new-instance v9, Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/tpms/CarTpmsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_4

    .line 3540
    :pswitch_4c
    :try_start_6
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_time"

    .line 3541
    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3542
    new-instance v8, Landroid/car/hardware/tbox/CarTboxManager;

    iget-object v6, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Landroid/car/hardware/tbox/CarTboxManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    .line 3544
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    goto :goto_4

    .line 3623
    :pswitch_4d
    new-instance v9, Landroid/car/xpeng/mona/CarMonaManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/xpeng/mona/CarMonaManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_4

    .line 3468
    :pswitch_4e
    new-instance v9, Landroid/car/hardware/dcdc/CarDcdcManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/dcdc/CarDcdcManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_4

    .line 3450
    :goto_3
    :pswitch_4f
    new-instance v9, Landroid/car/hardware/avas/CarAvasManager;

    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/car/hardware/avas/CarAvasManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_4

    .line 3376
    :pswitch_50
    new-instance v9, Landroid/car/CarProjectionManager;

    invoke-direct {v9, p0, p2}, Landroid/car/CarProjectionManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    :goto_4
    return-object v9

    :sswitch_data_0
    .sparse-switch
        -0x756b35b1 -> :sswitch_50
        -0x6f8cdbf2 -> :sswitch_4f
        -0x6f8bc5db -> :sswitch_4e
        -0x6f878044 -> :sswitch_4d
        -0x6f848242 -> :sswitch_4c
        -0x6f844df7 -> :sswitch_4b
        -0x6f83743b -> :sswitch_4a
        -0x6e917bfd -> :sswitch_49
        -0x6e7fee2b -> :sswitch_48
        -0x6e5a4f00 -> :sswitch_47
        -0x67dc8ab8 -> :sswitch_46
        -0x5d57624d -> :sswitch_45
        -0x5c432459 -> :sswitch_44
        -0x5841cd03 -> :sswitch_43
        -0x558c9b7c -> :sswitch_42
        -0x3fcc9cbb -> :sswitch_41
        -0x3c5c1970 -> :sswitch_40
        -0x3b32222b -> :sswitch_3f
        -0x35ffac46 -> :sswitch_3e
        -0x341b3df8 -> :sswitch_3d
        -0x301acbba -> :sswitch_3c
        -0x2ce38403 -> :sswitch_3b
        -0x2ce3832e -> :sswitch_3a
        -0x2ce382ef -> :sswitch_39
        -0x2ce3817b -> :sswitch_38
        -0x2ce3803f -> :sswitch_37
        -0x2ce37df7 -> :sswitch_36
        -0x2ce37db4 -> :sswitch_35
        -0x2ce37da5 -> :sswitch_34
        -0x2ce37cf8 -> :sswitch_33
        -0x2ce37968 -> :sswitch_32
        -0x2ce3749f -> :sswitch_31
        -0x2ce37445 -> :sswitch_30
        -0x2ce368d0 -> :sswitch_2f
        -0x2ce36734 -> :sswitch_2e
        -0x2ce365f6 -> :sswitch_2d
        -0x2ce36599 -> :sswitch_2c
        -0x2ce35ad2 -> :sswitch_2b
        -0x2ce35828 -> :sswitch_2a
        -0x2ce3564b -> :sswitch_29
        -0x2ce35640 -> :sswitch_28
        -0x2ce341a2 -> :sswitch_27
        -0x2ce34021 -> :sswitch_26
        -0x2ce33fd3 -> :sswitch_25
        -0x2ce3365f -> :sswitch_24
        -0x2ce334d4 -> :sswitch_23
        -0x2ce32d4a -> :sswitch_22
        -0x23f279fd -> :sswitch_21
        -0x1a8272d6 -> :sswitch_20
        -0x185b51c7 -> :sswitch_1f
        -0x1664dc47 -> :sswitch_1e
        -0xf701374 -> :sswitch_1d
        -0xf38bc7a -> :sswitch_1c
        0x197c9 -> :sswitch_1b
        0x310db0 -> :sswitch_1a
        0x3164ae -> :sswitch_19
        0xd89a15 -> :sswitch_18
        0x58d9bd6 -> :sswitch_17
        0x5a0abe9 -> :sswitch_16
        0x65e8905 -> :sswitch_15
        0x66496dd -> :sswitch_14
        0xfbe974e -> :sswitch_13
        0x1d05dc14 -> :sswitch_12
        0x3022a0cc -> :sswitch_11
        0x333e2094 -> :sswitch_10
        0x401b9149 -> :sswitch_f
        0x43994e77 -> :sswitch_e
        0x52f29a18 -> :sswitch_d
        0x5bceb56d -> :sswitch_c
        0x5c52882c -> :sswitch_b
        0x5febf17a -> :sswitch_a
        0x6201e570 -> :sswitch_9
        0x62822071 -> :sswitch_8
        0x691dedfd -> :sswitch_7
        0x6d19553a -> :sswitch_6
        0x70ba7c6d -> :sswitch_5
        0x733374f6 -> :sswitch_4
        0x77dba101 -> :sswitch_3
        0x77ee823f -> :sswitch_2
        0x7e5eafc3 -> :sswitch_1
        0x7ed76bf4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private static determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    .line 2957
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 2958
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 2951
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2952
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method private dispatchCarReadyToMainThread(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2898
    iget-object p1, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 2901
    :cond_0
    iget-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    new-instance v0, Landroid/car/-$$Lambda$Car$TUxEUQEyMHY05z32LVgNJZwGV0k;

    invoke-direct {v0, p0}, Landroid/car/-$$Lambda$Car$TUxEUQEyMHY05z32LVgNJZwGV0k;-><init>(Landroid/car/Car;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private finishClient()V
    .locals 3

    .line 3281
    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 3284
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3285
    check-cast v0, Landroid/app/Activity;

    .line 3286
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car service crashed, client not handling it, finish Activity, created from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.L"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 3293
    :cond_1
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_2

    .line 3294
    check-cast v0, Landroid/app/Service;

    .line 3295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/car/Car;->killClient(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3297
    invoke-direct {p0, v0}, Landroid/car/Car;->killClient(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3282
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Car service has crashed, null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHardwareCarStage()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 4066
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4067
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    const/16 v2, 0xd

    .line 4070
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareCarType()Ljava/lang/String;
    .locals 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "persist.sys.xiaopeng.car_type"

    const-string v1, ""

    .line 3828
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.xiaopeng.software"

    .line 3832
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3833
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x7

    .line 3836
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0xc

    .line 3837
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "persist.sys.xiaopeng.extendedCarType"

    const/4 v5, 0x0

    .line 3838
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "persist.sys.xiaopeng.projectConfigtaion"

    .line 3839
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "persist.sys.xiaopeng.powertrainForm"

    .line 3840
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v5

    .line 3841
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "H93"

    const-string v12, "F57"

    const-string v13, "E38"

    const-string v14, "E28"

    const-string v15, "D55"

    const-string v1, "D01"

    const-string v2, "F30"

    const-string v5, "F01"

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    move v9, v8

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v0, 0x1f

    if-ne v6, v0, :cond_b

    const-string v0, "H93A"

    return-object v0

    :cond_b
    const/16 v0, 0x21

    if-ne v6, v0, :cond_c

    const-string v0, "H93AS"

    return-object v0

    :cond_c
    const/16 v0, 0x32

    if-ne v6, v0, :cond_d

    const-string v0, "H93AE"

    return-object v0

    :cond_d
    return-object v11

    :pswitch_1
    const-string v0, "M1"

    .line 3898
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "F57AES"

    return-object v0

    :cond_e
    return-object v12

    :pswitch_2
    const-string v0, "Q9"

    .line 3876
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v2

    :cond_f
    const-string v0, "QI"

    .line 3878
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "F30B"

    return-object v0

    :cond_10
    const-string v0, "M7"

    .line 3880
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v7, :cond_11

    const-string v0, "F30BS"

    return-object v0

    .line 3882
    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "F30BE"

    return-object v0

    :cond_12
    return-object v2

    :pswitch_3
    const-string v0, "QL"

    .line 3851
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "E38B"

    return-object v0

    :cond_13
    if-eq v4, v8, :cond_14

    return-object v13

    :cond_14
    const-string v0, "E38A"

    return-object v0

    :pswitch_4
    const-string v0, "Q1"

    .line 3862
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object v14

    :cond_15
    const-string v0, "QX"

    .line 3865
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "E28U"

    return-object v0

    :cond_16
    if-eq v4, v8, :cond_17

    const-string v0, "E28A"

    return-object v0

    :cond_17
    const-string v0, "E28B"

    return-object v0

    :pswitch_5
    if-eq v4, v8, :cond_18

    return-object v15

    :cond_18
    const-string v0, "D55A"

    return-object v0

    :pswitch_6
    const-string v0, "QV"

    .line 3904
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "D01M"

    return-object v0

    :cond_19
    const-string v0, "QW"

    .line 3906
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object v1

    :cond_1a
    const-string v0, "M6"

    .line 3908
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "D01A"

    return-object v0

    :cond_1b
    :pswitch_7
    const-string v0, "M9"

    .line 3912
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v7, :cond_1c

    const-string v0, "F01S"

    return-object v0

    .line 3914
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "F01E"

    return-object v0

    :cond_1d
    const-string v0, "QE"

    .line 3916
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1e
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x10545 -> :sswitch_7
        0x105e4 -> :sswitch_6
        0x1094b -> :sswitch_5
        0x1096a -> :sswitch_4
        0x10cc7 -> :sswitch_3
        0x10d23 -> :sswitch_2
        0x10d68 -> :sswitch_1
        0x11562 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHardwareCarTypeExt()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3945
    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v0

    .line 3947
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getHardwareVersion()I
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "ro.boot.hw_version"

    const-string v1, "0x00"

    .line 3733
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 3735
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 3736
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 3738
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CAR.L"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getIXpVehicleServiceOrThrow()Landroid/os/IBinder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3707
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mIXpService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 3711
    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "CAR.L"

    const-string v2, "not working while Xp vehicle service not ready"

    .line 3708
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Xp vehicle service not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 3712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getUuidCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "persist.sys.hardware.uuid"

    const-string v1, ""

    .line 4085
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 3776
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3777
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x7

    const/16 v2, 0x9

    .line 3780
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXpCduType()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 4002
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4003
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x7

    .line 4006
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.xiaopeng.extendedCarType"

    const/4 v2, 0x0

    .line 4007
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 4009
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "Q8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "Q7"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "Q3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "Q8B"

    return-object v0

    :pswitch_1
    const-string v0, "Q7A"

    return-object v0

    :pswitch_2
    const-string v0, "Q3A"

    return-object v0

    :cond_4
    :goto_1
    const-string v1, "persist.sys.xiaopeng.projectConfigtaion"

    .line 4021
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x1f

    const-string v5, "QB"

    if-eq v1, v4, :cond_7

    const/16 v4, 0x21

    if-eq v1, v4, :cond_6

    const/16 v4, 0x32

    if-eq v1, v4, :cond_5

    goto :goto_2

    .line 4034
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "QBAE"

    return-object v0

    .line 4029
    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "QBAS"

    return-object v0

    .line 4024
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "QBA"

    return-object v0

    :cond_8
    :goto_2
    const-string v1, "persist.sys.xiaopeng.powertrainForm"

    .line 4041
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    move v2, v3

    .line 4042
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "M7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "M9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    if-eqz v2, :cond_b

    const-string v0, "M9S"

    goto :goto_3

    :cond_b
    const-string v0, "M9E"

    :goto_3
    return-object v0

    :cond_c
    if-eqz v2, :cond_d

    const-string v0, "M7S"

    goto :goto_4

    :cond_d
    const-string v0, "M7E"

    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xa02 -> :sswitch_2
        0xa06 -> :sswitch_1
        0xa07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCarDisconnectLocked()V
    .locals 2

    .line 2983
    iget v0, p0, Landroid/car/Car;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    .line 2987
    :cond_0
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2988
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2989
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 2990
    invoke-direct {p0}, Landroid/car/Car;->tearDownCarManagersLocked()V

    const/4 v1, 0x0

    .line 2991
    iput-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    .line 2992
    iput-object v1, p0, Landroid/car/Car;->mIXpService:Landroid/os/IBinder;

    .line 2993
    iput v0, p0, Landroid/car/Car;->mConnectionState:I

    return-void
.end method

.method public static handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Service;",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 3315
    invoke-static {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;)V

    return-object p2
.end method

.method public static handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;)V
    .locals 4

    .line 3323
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    const-string v1, ","

    const-string v2, "CAR.L"

    if-nez v0, :cond_0

    .line 3330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car service has crashed, client:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3331
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3330
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3333
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 3324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car service threw TransactionTooLargeException, client:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3325
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3324
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3327
    new-instance v0, Landroid/car/CarTransactionException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3328
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Car service threw TransactionTooLargeException, client: %s, %s"

    invoke-direct {v0, p1, p0, v1}, Landroid/car/CarTransactionException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static isExportVersion()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3754
    invoke-static {}, Landroid/car/Car;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 3755
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "ZH"

    .line 3758
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3759
    invoke-static {}, Landroid/car/Car;->getHardwareCarStage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isSystemFirstBoot()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "persist.sys.boot.first"

    const-string v1, ""

    .line 4096
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 4097
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private killClient(Ljava/lang/String;)V
    .locals 2

    .line 3302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**Car service has crashed. Client("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") is not handling it. Client should use Car.createCar(..., CarServiceLifecycleListener, ...) to handle it properly. Check pritned callstack to check where other version of Car.createCar() was called. Killing the client process**"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    const-string v1, "CAR.L"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3307
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static setIXpService(Landroid/car/Car;)V
    .locals 2

    .line 2877
    iget-object v0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "xp_vehicle"

    .line 2879
    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/car/Car;->mIXpService:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2881
    invoke-virtual {p0, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 2882
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get xp service failed! "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CAR.L"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private startCarService()V
    .locals 6

    .line 3671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.car"

    .line 3672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.car.ICar"

    .line 3673
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3674
    iget-object v1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 3676
    iget-object v1, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    .line 3678
    :try_start_0
    iget v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string v0, "CAR.L"

    const-string v2, "cannot bind to car service after max retry"

    .line 3680
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3683
    :cond_0
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3687
    :cond_1
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3688
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3689
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 3690
    iput-boolean v4, p0, Landroid/car/Car;->mServiceBound:Z

    .line 3692
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tearDownCarManagersLocked()V
    .locals 2

    .line 3717
    iget-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;

    .line 3718
    invoke-virtual {v1}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2973
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2974
    :try_start_0
    iget v1, p0, Landroid/car/Car;->mConnectionState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2977
    iput v1, p0, Landroid/car/Car;->mConnectionState:I

    .line 2978
    invoke-direct {p0}, Landroid/car/Car;->startCarService()V

    .line 2979
    monitor-exit v0

    return-void

    .line 2975
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already connected or connecting"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 2979
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableFeature(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3159
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3160
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 3161
    monitor-exit v0

    return v2

    .line 3164
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    :try_start_1
    invoke-interface {v1, p1}, Landroid/car/ICar;->disableFeature(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 3164
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public disconnect()V
    .locals 3

    .line 3002
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3003
    :try_start_0
    invoke-direct {p0}, Landroid/car/Car;->handleCarDisconnectLocked()V

    .line 3004
    iget-object v1, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3005
    iget-boolean v1, p0, Landroid/car/Car;->mServiceBound:Z

    if-eqz v1, :cond_0

    .line 3006
    iget-object v1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 3007
    iput-boolean v1, p0, Landroid/car/Car;->mServiceBound:Z

    .line 3009
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

.method public enableFeature(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3134
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3135
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 3136
    monitor-exit v0

    return v2

    .line 3139
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3141
    :try_start_1
    invoke-interface {v1, p1}, Landroid/car/ICar;->enableFeature(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 3139
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getAllEnabledFeatures()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3183
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3184
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez v1, :cond_0

    .line 3185
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 3188
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3190
    :try_start_1
    invoke-interface {v1}, Landroid/car/ICar;->getAllEnabledFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3192
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    .line 3188
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAllPendingDisabledFeatures()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3207
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3208
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez v1, :cond_0

    .line 3209
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 3212
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    :try_start_1
    invoke-interface {v1}, Landroid/car/ICar;->getAllPendingDisabledFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3216
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    .line 3212
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAllPendingEnabledFeatures()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3231
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3232
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez v1, :cond_0

    .line 3233
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 3236
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3238
    :try_start_1
    invoke-interface {v1}, Landroid/car/ICar;->getAllPendingEnabledFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3240
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v1

    .line 3236
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCarConnectionType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    return v0
.end method

.method public getCarDiagnosticManager()Landroid/car/diagnostic/XpDiagnosticManager;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    const-string/jumbo v0, "xp_diagnostic"

    .line 3090
    invoke-virtual {p0, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    return-object v0
.end method

.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 3054
    invoke-virtual {p0}, Landroid/car/Car;->getICarOrThrow()Landroid/car/ICar;

    .line 3055
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3056
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 3059
    :try_start_1
    iget-object v2, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    invoke-interface {v2, p1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "CAR.L"

    .line 3061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarManager could not get binder for service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3063
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 3065
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, v2}, Landroid/car/Car;->createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "CAR.L"

    .line 3067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarManager could not create manager for service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3069
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v3

    .line 3071
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Landroid/car/CarManagerBase;->onConnected()V

    .line 3072
    iget-object v2, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3074
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 3077
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 3248
    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 1

    .line 3256
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getICarOrThrow()Landroid/car/ICar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3696
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3697
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v1, :cond_0

    .line 3701
    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "CAR.L"

    const-string v2, "not working while car service not ready"

    .line 3698
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 3702
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceConnectionListener()Landroid/content/ServiceConnection;
    .locals 1

    .line 3040
    iget-object v0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 3264
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-object p2
.end method

.method handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 3

    .line 3272
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    const-string v1, "CAR.L"

    if-nez v0, :cond_0

    const-string v0, "Car service has crashed"

    .line 3276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string v0, "Car service threw TransactionTooLargeException"

    .line 3273
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3274
    new-instance v0, Landroid/car/CarTransactionException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Car service threw TransactionTooLargException"

    invoke-direct {v0, p1, v2, v1}, Landroid/car/CarTransactionException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 2

    .line 3019
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3020
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3021
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 3

    .line 3030
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3031
    :try_start_0
    iget v1, p0, Landroid/car/Car;->mConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 3032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 3113
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3114
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 3115
    monitor-exit v0

    return p1

    .line 3118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3119
    iget-object v0, p0, Landroid/car/Car;->mFeatures:Landroid/car/CarFeatures;

    invoke-virtual {v0, v1, p1}, Landroid/car/CarFeatures;->isFeatureEnabled(Landroid/car/ICar;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 3118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic lambda$dispatchCarReadyToMainThread$0$Car()V
    .locals 2

    .line 2902
    iget-object v0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    return-void
.end method
