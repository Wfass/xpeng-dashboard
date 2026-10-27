.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;
.super Ljava/lang/Object;
.source "ITpmsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final TPMS_HIGH_PRESSURE_WARNING:I = 0x4

.field public static final TPMS_LOW_PRESSURE_WARNING:I = 0x2

.field public static final TPMS_NO_WARING:I = 0x0

.field public static final TPMS_PR_FL:I = 0x1

.field public static final TPMS_PR_FR:I = 0x2

.field public static final TPMS_PR_RL:I = 0x3

.field public static final TPMS_PR_RR:I = 0x4

.field public static final TPMS_TIRE_TYPE_FAIL:I = 0x3

.field public static final TPMS_TIRE_TYPE_FIXED:I = 0x2

.field public static final TPMS_TIRE_TYPE_FIXING:I = 0x1

.field public static final TPMS_TIRE_TYPE_NOT_FIX:I = 0x0

.field public static final TPMS_WARNING_INVALID:I = 0x7


# virtual methods
.method public abstract calibrateTyrePressure()V
.end method

.method public abstract getTpmsCalibrateState()I
.end method

.method public abstract getTpmsTemperature()[I
.end method

.method public abstract getTpmsWarningState()[I
.end method

.method public abstract getTyrePressure(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract isTpmsSensorStateWarning()[Z
.end method

.method public abstract isTpmsSensorWarning()[Z
.end method

.method public abstract isTpmsTempWarning()[Z
.end method
