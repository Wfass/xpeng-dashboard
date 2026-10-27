.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;
.super Ljava/lang/Object;
.source "IIcmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final BRAKE_FLUID_LEVEL_LOW:I = 0x1

.field public static final BRAKE_FLUID_LEVEL_NORMAL:I = 0x0

.field public static final CUSTOM_DOOR_KEY_CONTROL_REAR_SCREEN:I = 0x7

.field public static final CUSTOM_DOOR_KEY_DISABLE:I = 0x0

.field public static final CUSTOM_DOOR_KEY_DVR_CAPTURE:I = 0x5

.field public static final CUSTOM_DOOR_KEY_MUTE:I = 0x2

.field public static final CUSTOM_DOOR_KEY_SHOW_OFF:I = 0x4

.field public static final CUSTOM_DOOR_KEY_SPEECH:I = 0x1

.field public static final CUSTOM_DOOR_KEY_SWITCH_MEDIA:I = 0x3

.field public static final CUSTOM_X_KEY_AUTO_DRIVE:I = 0x5

.field public static final CUSTOM_X_KEY_AUTO_PARK:I = 0x4

.field public static final CUSTOM_X_KEY_DISABLE:I = 0x0

.field public static final CUSTOM_X_KEY_DVR_CAPTURE:I = 0x3

.field public static final CUSTOM_X_KEY_FAST_CHARGE:I = 0xd

.field public static final CUSTOM_X_KEY_LCC:I = 0xc

.field public static final CUSTOM_X_KEY_LEFT_SLIDE_DOOR:I = 0xf

.field public static final CUSTOM_X_KEY_LEFT_WING_DOOR:I = 0x11

.field public static final CUSTOM_X_KEY_NRA:I = 0xa

.field public static final CUSTOM_X_KEY_RIGHT_SLIDE_DOOR:I = 0x10

.field public static final CUSTOM_X_KEY_RIGHT_WING_DOOR:I = 0x12

.field public static final CUSTOM_X_KEY_SHOW_OFF:I = 0x2

.field public static final CUSTOM_X_KEY_SLOW_CHARGE:I = 0xe

.field public static final CUSTOM_X_KEY_SWITCH_MEDIA:I = 0x1

.field public static final CUSTOM_X_KEY_TEAM_TALK:I = 0x7

.field public static final CUSTOM_X_KEY_UNLOCK_TRUNK:I = 0x8

.field public static final CUSTOM_X_KEY_WETCHAT:I = 0x6

.field public static final CUSTOM_X_KEY_XPOWER:I = 0x9

.field public static final ID_ICM_ALARM_VOLUME:I = 0x21401605

.field public static final ID_ICM_MEDIA_SOURCE:I = 0x21401636

.field public static final ID_ICM_SCREEN_LIGHT:I = 0x21401637

.field public static final ID_ICM_SPEED_LIMIT_WARNING_SWITCH:I = 0x21401622

.field public static final ID_ICM_SPEED_LIMIT_WARNING_VALUE:I = 0x2140162d

.field public static final ID_ICM_TEMPERATURE:I = 0x21401625

.field public static final ID_ICM_WIND_MODE:I = 0x21401621

.field public static final ID_ICM_WIND_POWER:I = 0x21401627

.field public static final KEY_ICM_BRIGHTNESS:Ljava/lang/String; = "icm_brightness"

.field public static final KEY_SYSTEM_MEDITATION_MODE:Ljava/lang/String; = "key_system_meditation_mode"

.field public static final KEY_TOUCH_ROTATION_SPEED:Ljava/lang/String; = "xp_touch_rotation_speed"

.field public static final KEY_WHEEL_KEY_PROTECT:Ljava/lang/String; = "XpWheelkeyIgnore"

.field public static final METER_ALARM_VOLUME_POWER:I = 0x2

.field public static final METER_ALARM_VOLUME_SOFT:I = 0x0

.field public static final METER_ALARM_VOLUME_STANDARD:I = 0x1

.field public static final TOUCH_ROTATION_INWARD:I = 0x0

.field public static final TOUCH_ROTATION_OUTWARD:I = 0x1

.field public static final TOUCH_ROTATION_SPEED_HIGH:I = 0x1

.field public static final TOUCH_ROTATION_SPEED_LOW:I = 0x3

.field public static final TOUCH_ROTATION_SPEED_MIDDLE:I = 0x2

.field public static final WHEEL_KEY_PROTECT_OFF:I = 0x0

.field public static final WHEEL_KEY_PROTECT_ON:I = 0x1


# virtual methods
.method public abstract getBrakeFluidLevelWarningMessage()I
.end method

.method public abstract getBrightSw()Z
.end method

.method public abstract getDoorBossKeySw()Z
.end method

.method public abstract getDoorKeyForCustomer()I
.end method

.method public abstract getIcmBrightness()I
.end method

.method public abstract getMediaSw()Z
.end method

.method public abstract getMileageA()F
.end method

.method public abstract getMileageB()F
.end method

.method public abstract getMileageSinceLastCharge()F
.end method

.method public abstract getMileageSinceStartUp()F
.end method

.method public abstract getMileageTotal()F
.end method

.method public abstract getSpeedLimitValueFromDataSync()I
.end method

.method public abstract getSpeedWarningSw()Z
.end method

.method public abstract getSpeedWarningValue()I
.end method

.method public abstract getTempSw()Z
.end method

.method public abstract getTouchRotationDirection()I
.end method

.method public abstract getTouchRotationSpeed()I
.end method

.method public abstract getWindModeSw()Z
.end method

.method public abstract getWindPowerSw()Z
.end method

.method public abstract getXKeyForCustomer()I
.end method

.method public abstract isWheelKeyProtectEnabled()Z
.end method

.method public abstract resetMeterMileageA()V
.end method

.method public abstract resetMeterMileageB()V
.end method

.method public abstract setBrightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDoorBossKeySw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDoorKeyForCustomer(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setDoorKeyForCustomer(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setIcmBrightness(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setIcmDayNightMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setIcmDrvTemp(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation
.end method

.method public abstract setIcmMeditationMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation
.end method

.method public abstract setIcmWindBlowMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setIcmWindLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setMediaSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMeterMultiProperties(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSpeedWarningSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSpeedWarningValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract setTempSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTouchRotationDirection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract setTouchRotationSpeed(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "speed",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setUserScenarioInfo([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract setWheelKeyProtectSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWheelKeyProtectSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setWindModeSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWindPowerSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWiperSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation
.end method

.method public abstract setXKeyForCustomer(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation
.end method

.method public abstract setXKeyForCustomer(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunc",
            "needSave"
        }
    .end annotation
.end method
