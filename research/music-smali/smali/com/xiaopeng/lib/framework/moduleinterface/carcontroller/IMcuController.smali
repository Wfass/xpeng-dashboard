.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;
.super Ljava/lang/Object;
.source "IMcuController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuRemindWarningEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuReqSaveQxdmLogEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuRoadAttributeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuChargeCompleteEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$AutoPowerOffNoticeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$AutoPowerOffStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$Mcu4gErrorEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuDtcReportEVChangeEvent;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuPmStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuIgStatusChangeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuGsensorOffsetEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuAckPwrDebugEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuReset4gEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuTheftStateEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuFaultInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuGpsInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$ChargeInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnErrorEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnFinishEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$BurnProgressEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuOta1EventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$McuPsuOtaEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactorySecretKeyToMcuEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryMcuBmsMsgToMcuEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryDisplayTypeMsgToMcuEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryDugReqMsgToMcuEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryPwrDebugMsgToMcuEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$VehiclePmStatus;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController$FactoryTestMsgToMcuEventMsg;
    }
.end annotation


# static fields
.field public static final ACTION_POWER_OFF_COUNTDOWN_CANCLE:I = 0x0

.field public static final ACTION_POWER_OFF_COUNTDOWN_END:I = 0x1

.field public static final AUTO_POWER_OFF_MODE_DISABLE:I = 0x0

.field public static final AUTO_POWER_OFF_MODE_ENABLE:I = 0x1

.field public static final COMMAND_LAMP_ACTIVE_AUTO_LIGHT:I = 0x1

.field public static final COMMAND_LAMP_ACTIVE_PARKING_AND_LOW_BEAM:I = 0x3

.field public static final COMMAND_LAMP_ACTIVE_PARKING_LIGHT:I = 0x2

.field public static final COMMAND_LAMP_OFF:I = 0x4

.field public static final COMMAND_REAR_FOG_OFF:I = 0x2

.field public static final COMMAND_REAR_FOG_ON:I = 0x1

.field public static final COMMAND_SEAT_PENDING:I = 0x2

.field public static final COMMAND_SEAT_START:I = 0x1

.field public static final COMMAND_SEAT_STOP:I = 0x3

.field public static final COMMAND_WINDOWS_AUTO_DOWN:I = 0x2

.field public static final COMMAND_WINDOWS_AUTO_DOWN_FRONT:I = 0x7

.field public static final COMMAND_WINDOWS_AUTO_DOWN_FRONT_LEFT:I = 0xd

.field public static final COMMAND_WINDOWS_AUTO_DOWN_FRONT_RIGHT:I = 0xe

.field public static final COMMAND_WINDOWS_AUTO_DOWN_REAR:I = 0x8

.field public static final COMMAND_WINDOWS_AUTO_DOWN_REAR_LEFT:I = 0xf

.field public static final COMMAND_WINDOWS_AUTO_DOWN_REAR_RIGHT:I = 0x10

.field public static final COMMAND_WINDOWS_AUTO_UP:I = 0x1

.field public static final COMMAND_WINDOWS_AUTO_UP_FRONT:I = 0x5

.field public static final COMMAND_WINDOWS_AUTO_UP_FRONT_LEFT:I = 0x9

.field public static final COMMAND_WINDOWS_AUTO_UP_FRONT_RIGHT:I = 0xa

.field public static final COMMAND_WINDOWS_AUTO_UP_REAR:I = 0x6

.field public static final COMMAND_WINDOWS_AUTO_UP_REAR_LEFT:I = 0xb

.field public static final COMMAND_WINDOWS_AUTO_UP_REAR_RIGHT:I = 0xc

.field public static final COMMAND_WINDOWS_STOP:I = 0x3

.field public static final COMMAND_WINDOWS_VENTILATE_MODE:I = 0x4

.field public static final DRIVING_STATUS_MODE_COMFORT:I = 0x0

.field public static final DRIVING_STATUS_MODE_ECO:I = 0x1

.field public static final DRIVING_STATUS_MODE_SPORT:I = 0x2

.field public static final MCU_CHARGE_COMPLETE_FINISHED:I = 0x1

.field public static final MCU_CHARGE_COMPLETE_UNFINISHED:I = 0x0

.field public static final MCU_DRIVING_MODE_ANTISICKNESS:I = 0x7

.field public static final MCU_DRIVING_MODE_COMFORT:I = 0x1

.field public static final MCU_DRIVING_MODE_ECO:I = 0x2

.field public static final MCU_DRIVING_MODE_ECO_PLUS:I = 0x3

.field public static final MCU_DRIVING_MODE_SHOW_1:I = 0x5

.field public static final MCU_DRIVING_MODE_SHOW_2:I = 0x6

.field public static final MCU_DRIVING_MODE_SPORT:I = 0x4

.field public static final MCU_VENTILATE_INVALID:I = 0x0

.field public static final MCU_VENTILATE_STATE:I = 0x1

.field public static final NOTICE_POWER_OFF_COUNTDOWN_END:I = 0x1

.field public static final NOTICE_POWER_OFF_COUNTDOWN_START:I = 0x0

.field public static final REMIND_WARNING_NO:I = 0x0

.field public static final REMIND_WARNING_YES:I = 0x1

.field public static final SEAT_DIRECTION_HORIZONAL_DECREASE:I = 0x2

.field public static final SEAT_DIRECTION_HORIZONAL_INCREASE:I = 0x1

.field public static final SEAT_DIRECTION_TILTING_DECREASE:I = 0x6

.field public static final SEAT_DIRECTION_TILTING_INCREASE:I = 0x5

.field public static final SEAT_DIRECTION_VERTICAL_DECREASE:I = 0x4

.field public static final SEAT_DIRECTION_VERTICAL_INCREASE:I = 0x3

.field public static final SEAT_SLOW_MOVE_ANGL_BACKWARD:I = 0x6

.field public static final SEAT_SLOW_MOVE_ANGL_FORWARD:I = 0x5

.field public static final SEAT_SLOW_MOVE_HORI_BACKWARD:I = 0x2

.field public static final SEAT_SLOW_MOVE_HORI_FORWARD:I = 0x1

.field public static final SEAT_SLOW_MOVE_PENDING:I = 0x2

.field public static final SEAT_SLOW_MOVE_START:I = 0x1

.field public static final SEAT_SLOW_MOVE_STOP:I = 0x3

.field public static final SEAT_SLOW_MOVE_VERT_BACKWARD:I = 0x4

.field public static final SEAT_SLOW_MOVE_VERT_FORWARD:I = 0x3

.field public static final SHOCK_HANDLE_OVER:I = 0x0

.field public static final SHOCK_HANDLE_PROCESSING:I = 0x1

.field public static final SHOCK_SWITCH_OFF:I = 0x0

.field public static final SHOCK_SWITCH_ON:I = 0x1

.field public static final VEHICLE_PM_STATUS_DEEP_SLEEP:I = 0x3

.field public static final VEHICLE_PM_STATUS_FAKE_OFF:I = 0x1

.field public static final VEHICLE_PM_STATUS_NORMAL:I = 0x0

.field public static final VEHICLE_PM_STATUS_OFF:I = 0x4

.field public static final VEHICLE_PM_STATUS_SLEEP_OFF:I = 0x2


# virtual methods
.method public abstract getAutoPowerOffMode()I
.end method

.method public abstract getCpuTemperature()I
.end method

.method public abstract getDtcReportEV()[I
.end method

.method public abstract getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;
.end method

.method public abstract getFactoryDugReqMsgToMcu()[I
.end method

.method public abstract getFactoryMcuBmsMsgToMcu()I
.end method

.method public abstract getFactoryPmSilentMsgToMcu()I
.end method

.method public abstract getFactoryPwrDebugMsgToMcu()[I
.end method

.method public abstract getGSensorOffset()[I
.end method

.method public abstract getHardwareCarStage()Ljava/lang/String;
.end method

.method public abstract getHardwareCarType()Ljava/lang/String;
.end method

.method public abstract getHardwareVersion()I
.end method

.method public abstract getIgStatus()[I
.end method

.method public abstract getMcu4GErrorStatus()I
.end method

.method public abstract getMcuChargeComplete()I
.end method

.method public abstract getMcuFaultInfo()[B
.end method

.method public abstract getMcuHardwareId()Ljava/lang/String;
.end method

.method public abstract getMcuRemindWarningSt()I
.end method

.method public abstract getMcuRequestSavingQxdmLog()I
.end method

.method public abstract getMcuTheftState()I
.end method

.method public abstract getMcuVentilateState()I
.end method

.method public abstract getPmStatus()I
.end method

.method public abstract getPowerOffCountdownNotice()I
.end method

.method public abstract getRoadAttribute(II)Ljava/lang/String;
.end method

.method public abstract getShockInfo()[I
.end method

.method public abstract getShockSwMode()I
.end method

.method public abstract getXpCduType()Ljava/lang/String;
.end method

.method public abstract sendChargeCompleteTime2Mcu(I)V
.end method

.method public abstract sendDiagnoseMsgToMcu([I)V
.end method

.method public abstract sendFactoryDisplayTypeMsgToMcu(I)V
.end method

.method public abstract sendFactoryDugReqMsgToMcu([I)V
.end method

.method public abstract sendFactoryMcuBmsMsgToMcu(I)V
.end method

.method public abstract sendFactoryPmSilentMsgToMcu(I)V
.end method

.method public abstract sendFactoryPwrDebugMsgToMcu([I)V
.end method

.method public abstract sendFactorySecretKeyToMcu([B)V
.end method

.method public abstract sendFactoryTestMsgToMcu([I)V
.end method

.method public abstract sendGpsInfoMsgToMcu([I)V
.end method

.method public abstract sendOta1MsgToMcu([I)V
.end method

.method public abstract sendPsuOtaMsgToMcu([I)V
.end method

.method public abstract sendRequestWakeToMcu(I)V
.end method

.method public abstract sendReset4gMsgToMcu([I)V
.end method

.method public abstract sendResetModemMsgToMcu(I)V
.end method

.method public abstract sendToMcuAppReadCfg(I[I)V
.end method

.method public abstract sendToMcuAppWriteCfg(III)V
.end method

.method public abstract setAutoPowerOff(I)V
.end method

.method public abstract setChairSlowlyMove([I)V
.end method

.method public abstract setDriveMode(I)V
.end method

.method public abstract setFlash(Z)V
.end method

.method public abstract setHorn(Z)V
.end method

.method public abstract setIgHeartBeat()V
.end method

.method public abstract setIgOff()V
.end method

.method public abstract setIgOn()V
.end method

.method public abstract setLampCommand(I)V
.end method

.method public abstract setMcuIsWakeUpByPhone(Z)V
.end method

.method public abstract setMqttLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPowerOffCountdownAction(I)V
.end method

.method public abstract setRearFogCommand(I)V
.end method

.method public abstract setRepairMode(Z)V
.end method

.method public abstract setSeatControlCommand(II)V
.end method

.method public abstract setShockHandleCmd(I)V
.end method

.method public abstract setShockSwMode(I)V
.end method

.method public abstract setShockValue2Mcu(I)V
.end method

.method public abstract setTheftHeartBeatOff()V
.end method

.method public abstract setTheftHeartBeatOn()V
.end method

.method public abstract setWindowsCommand(I)V
.end method

.method public abstract updateMcu(Ljava/lang/String;)V
.end method
