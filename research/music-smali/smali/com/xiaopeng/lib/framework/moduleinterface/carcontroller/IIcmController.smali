.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;
.super Ljava/lang/Object;
.source "IIcmController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmFeedbackEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmSendResultEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMileageBEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMileageAEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmStartUpMileageEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmLastChargeMileageEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmDriveTotalMileageEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMLightChangeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMBTContactsEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMSystemTimeValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMDriverTempValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMWindLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$ICMWindBlowModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$SpeedLimitWarningValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$SpeedLimitWarningSwitchEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmDayNightEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmNavigationEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmScreenLightEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmMediaSourceEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmWindModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmWindPowerEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmTemperatureEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$AlarmVolumeEventMsg;
    }
.end annotation


# static fields
.field public static final DISTRACTION_LEVEL_L1:I = 0x1

.field public static final DISTRACTION_LEVEL_NONE:I = 0x0

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final FATIGUE_LEVEL_L1:I = 0x1

.field public static final FATIGUE_LEVEL_L2:I = 0x2

.field public static final FATIGUE_LEVEL_NONE:I = 0x0

.field public static final ICM_ALARM_STATUS_VOLUME_POWER:I = 0x2

.field public static final ICM_ALARM_STATUS_VOLUME_SOFT:I = 0x0

.field public static final ICM_ALARM_STATUS_VOLUME_STANDARD:I = 0x1

.field public static final ICM_DAY_NIGHT_MODE_DAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICM_DAY_NIGHT_MODE_NIGHT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICM_METER_ALARM_VOLUME_POWER:I = 0x2

.field public static final ICM_METER_ALARM_VOLUME_SOFT:I = 0x0

.field public static final ICM_METER_ALARM_VOLUME_STANDARD:I = 0x1

.field public static final ICM_METER_TIME_FORMAT_12_HOUR:I = 0x2

.field public static final ICM_METER_TIME_FORMAT_24_HOUR:I = 0x1


# virtual methods
.method public abstract getContacts()I
.end method

.method public abstract getDriveTotalMileage()F
.end method

.method public abstract getICMDriverTempValue()F
.end method

.method public abstract getICMSystemTimeValue()[I
.end method

.method public abstract getICMWindBlowMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getICMWindLevel()I
.end method

.method public abstract getIcmAlarmVolume()I
.end method

.method public abstract getIcmConnectionState()Z
.end method

.method public abstract getIcmDayNightSwitch()Z
.end method

.method public abstract getIcmFeedback()I
.end method

.method public abstract getIcmMediaSource()Z
.end method

.method public abstract getIcmNavigation()Z
.end method

.method public abstract getIcmScreenLight()Z
.end method

.method public abstract getIcmTemperature()Z
.end method

.method public abstract getIcmWindMode()Z
.end method

.method public abstract getIcmWindPower()Z
.end method

.method public abstract getLastChargeMileage()F
.end method

.method public abstract getLastStartUpMileage()F
.end method

.method public abstract getMeterMileageA()F
.end method

.method public abstract getMeterMileageB()F
.end method

.method public abstract getSpeedLimitWarningSwitch()Z
.end method

.method public abstract getSpeedLimitWarningValue()I
.end method

.method public abstract getWheelEvent()I
.end method

.method public abstract resetMeterMileageA()V
.end method

.method public abstract resetMeterMileageB()V
.end method

.method public abstract sendBinMsg(I[B[B)V
.end method

.method public abstract sendContacts([B)V
.end method

.method public abstract sendRomBinMsgNew([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendSpeechStateInfo([B)V
.end method

.method public abstract setBtStateMessage([B)V
.end method

.method public abstract setICMDriverTempValue(F)V
.end method

.method public abstract setICMSystemTimeValue(II)V
.end method

.method public abstract setICMWindBlowMode(I)V
.end method

.method public abstract setICMWindLevel(I)V
.end method

.method public abstract setIcmAccount([B)V
.end method

.method public abstract setIcmAlarmVolume(I)V
.end method

.method public abstract setIcmDayNightMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setIcmDayNightSwitch(Z)V
.end method

.method public abstract setIcmDistractionLevel(I)V
.end method

.method public abstract setIcmDmsMode(I)V
.end method

.method public abstract setIcmFatigueLevel(I)V
.end method

.method public abstract setIcmMediaSource(Z)V
.end method

.method public abstract setIcmMultiProperty(Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setIcmNavigation(Z)V
.end method

.method public abstract setIcmScreenLight(Z)V
.end method

.method public abstract setIcmTemperature(Z)V
.end method

.method public abstract setIcmTimeFormat(I)V
.end method

.method public abstract setIcmWindMode(Z)V
.end method

.method public abstract setIcmWindPower(Z)V
.end method

.method public abstract setMeterBackLightLevel(I)V
.end method

.method public abstract setMeterSoundState(IIZ)V
.end method

.method public abstract setMusicInfo([B[B)V
.end method

.method public abstract setNavigationInfo([B)V
.end method

.method public abstract setNetRadioInfo([B[B)V
.end method

.method public abstract setRadioInfo([B)V
.end method

.method public abstract setSpeedLimitWarningSwitch(Z)V
.end method

.method public abstract setSpeedLimitWarningValue(I)V
.end method

.method public abstract setWeatherInfo([B)V
.end method
