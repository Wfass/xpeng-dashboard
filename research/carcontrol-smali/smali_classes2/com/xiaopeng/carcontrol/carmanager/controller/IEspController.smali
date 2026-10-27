.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;
.super Ljava/lang/Object;
.source "IEspController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final APB_SYSTEM_DISPLAY_MESSAGE_INSUFFICIENT_PARK_REPLACE_PARK:I = 0x2

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_NO_RELEASE_TIP_FOR_P_FILE:I = 0x3

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_NO_RELEASE_TIP_FOR_SHIFT:I = 0x1

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_OFF:I = 0x0

.field public static final APB_SYSTEM_STATUS_CLOSED:I = 0x2

.field public static final APB_SYSTEM_STATUS_LOCKING:I = 0x4

.field public static final APB_SYSTEM_STATUS_RELEASED:I = 0x1

.field public static final APB_SYSTEM_STATUS_RELEASING:I = 0x3

.field public static final APB_SYSTEM_STATUS_UNDEFINED:I = 0x0

.field public static final AVH_STATUS_ACTIVE:I = 0x1

.field public static final AVH_STATUS_STANDBY:I = 0x2

.field public static final EPB_DRIVER_OFF_WARNING_OFF:I = 0x0

.field public static final EPB_DRIVER_OFF_WARNING_RELEASE_PARKING_BRAKE_BY_EPB_BUTTON:I = 0x1

.field public static final ESC_ESP_NORMAL:I = 0x1

.field public static final ESC_ESP_OFF:I = 0x3

.field public static final ESC_ESP_ON:I = 0x4

.field public static final ESC_ESP_RACING:I = 0x5

.field public static final ESC_ESP_SPORT:I = 0x2

.field public static final ESP_BPF_AUTO:I = 0x4

.field public static final ESP_BPF_ECO:I = 0x2

.field public static final ESP_BPF_NONE:I = 0x0

.field public static final ESP_BPF_NORMAL:I = 0x1

.field public static final ESP_BPF_SPORT:I = 0x3

.field public static final ESP_STATUS_OFF:I = 0x0

.field public static final ESP_STATUS_ON:I = 0x1

.field public static final HAS_HBC_REQUEST:I = 0x1

.field public static final NO_HBC_REQUEST:I


# virtual methods
.method public abstract getApbSystemDisplayMessage()I
.end method

.method public abstract getApbSystemStatus()I
.end method

.method public abstract getAvh()I
.end method

.method public abstract getAvhFault()Z
.end method

.method public abstract getAvhSw()Z
.end method

.method public abstract getDtcFaultStatus()Z
.end method

.method public abstract getEpbDriverOffWarningMsg()I
.end method

.method public abstract getEpsWarningState()Z
.end method

.method public abstract getEsp()I
.end method

.method public abstract getEspBpfMode()I
.end method

.method public abstract getEspCstSw()Z
.end method

.method public abstract getEspFault()Z
.end method

.method public abstract getEspMudStatus()Z
.end method

.method public abstract getEspSw()Z
.end method

.method public abstract getEspTsmSwitchStatus()I
.end method

.method public abstract getHbcRequestStatus()I
.end method

.method public abstract getHdc()Z
.end method

.method public abstract getHdcFault()Z
.end method

.method public abstract getTsmFaultStatus()Z
.end method

.method public abstract setAvh(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAvhSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEpbSystemStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEsp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspBpfMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setEspBpfMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setEspCstSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspCstSw(ZZ)V
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

.method public abstract setEspMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setEspModeSport()V
.end method

.method public abstract setEspMudStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEspTsmSwitchStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHdc(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
