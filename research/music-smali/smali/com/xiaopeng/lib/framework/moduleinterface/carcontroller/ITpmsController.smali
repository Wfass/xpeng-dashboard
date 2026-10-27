.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController;
.super Ljava/lang/Object;
.source "ITpmsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController$TirePressureAllEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController$TirePressureEventMsg;
    }
.end annotation


# static fields
.field public static final TYPE_NOT_FIX:I = 0x0

.field public static final TYRE_FAIL:I = 0x3

.field public static final TYRE_FIXED:I = 0x2

.field public static final TYRE_FIXING:I = 0x1


# virtual methods
.method public abstract calibrateTirePressure()V
.end method

.method public abstract getAllTirePerssureSensorStatus()[I
.end method

.method public abstract getAllTirePressureWarnings()[I
.end method

.method public abstract getAllTireTemperatureWarnings()[I
.end method

.method public abstract getTirePressure()I
.end method

.method public abstract getTirePressureAll()[F
.end method

.method public abstract isAbnormalTirePressure()Z
.end method

.method public abstract isTirePressureSystemFault()Z
.end method
