.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;
.super Ljava/lang/Object;
.source "IMcuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final BLE_DISCONNECT:I = 0x1

.field public static final MCU_BLE_START_FAILED:I = 0x2

.field public static final MCU_IG_STATUS_IG_OFF:I = 0x0

.field public static final MCU_IG_STATUS_LOCAL_IG_ON:I = 0x1

.field public static final MCU_IG_STATUS_REMOTE_IG_ON:I = 0x2

.field public static final MCU_NFC_START_FAILED:I = 0x3

.field public static final MCU_REMOTE_CONTROL_KEY_START_FAILED:I = 0x1

.field public static final MCU_START_SUCCESSFUL:I = 0x0

.field public static final MCU_WATCH_START_FAILED:I = 0x4

.field public static final MCU_WATCH_START_FAILED_4G:I = 0x5

.field public static final REAR_ROW_REMINDER_SW:Ljava/lang/String; = "rear_row_reminder"

.field public static final REMIND_WARNING_NO:I = 0x0

.field public static final REMIND_WARNING_YES:I = 0x1


# virtual methods
.method public abstract getCiuState()Z
.end method

.method public abstract getIgStatusFromMcu()I
.end method

.method public abstract getRearSeatBeltWarningState()[I
.end method

.method public abstract getRemindWarningSw()Z
.end method

.method public abstract getSeatWelcomeMode()Z
.end method

.method public abstract getSecRowLeftSeatBeltWarning()Z
.end method

.method public abstract getSecRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getSecRowRightSeatBeltWarning()Z
.end method

.method public abstract getTrdRowLeftSeatBeltWarning()Z
.end method

.method public abstract getTrdRowMiddleSeatBeltWarning()Z
.end method

.method public abstract getTrdRowRightSeatBeltWarning()Z
.end method

.method public abstract isAutoPowerOffEnable()Z
.end method

.method public abstract isFactoryModeActive()Z
.end method

.method public abstract setAutoPowerOffSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setBleDisconnectRequest(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation
.end method

.method public abstract setGeoFenceStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation
.end method

.method public abstract setRearSeatBeltWarningPopUpSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRemindWarningSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setSeatWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSeatWelcomeMode(ZZ)V
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

.method public abstract setSecRowLeftSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSecRowLeftSeatBeltWarning(ZZ)V
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

.method public abstract setSecRowMiddleSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSecRowMiddleSeatBeltWarning(ZZ)V
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

.method public abstract setSecRowRightSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSecRowRightSeatBeltWarning(ZZ)V
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

.method public abstract setTrdRowLeftSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrdRowLeftSeatBeltWarning(ZZ)V
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

.method public abstract setTrdRowMiddleSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrdRowMiddleSeatBeltWarning(ZZ)V
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

.method public abstract setTrdRowRightSeatBeltWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrdRowRightSeatBeltWarning(ZZ)V
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
