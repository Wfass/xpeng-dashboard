.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController;
.super Ljava/lang/Object;
.source "IEpsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringAngleSpdEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringAngleEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController$SteeringWheelEPSEventMsg;
    }
.end annotation


# static fields
.field public static final EPS_POWER_ASSISTED_SOFT:I = 0x1

.field public static final EPS_POWER_ASSISTED_SPORT:I = 0x2

.field public static final EPS_POWER_ASSISTED_STANDARD:I = 0x0

.field public static final POWER_STATUS_ASSISTED_SOFT:I = 0x1

.field public static final POWER_STATUS_ASSISTED_SPORT:I = 0x2

.field public static final POWER_STATUS_ASSISTED_STANDARD:I


# virtual methods
.method public abstract getSteeringAngle()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSteeringAngleSpd()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getSteeringWheelEPS()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setSteeringWheelEPS(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
