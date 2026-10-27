.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;
.super Ljava/lang/Object;
.source "IEpsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPS_MODE_INVALID:I = 0x3

.field public static final EPS_MODE_SOFT:I = 0x1

.field public static final EPS_MODE_SPORT:I = 0x2

.field public static final EPS_MODE_STANDARD:I


# virtual methods
.method public abstract getSteeringAngle()F
.end method

.method public abstract getSteeringEps()I
.end method

.method public abstract getSteeringEpsSp()I
.end method

.method public abstract getTorsionBarTorque()F
.end method

.method public abstract setSteeringEps(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation
.end method

.method public abstract setSteeringEps(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eps",
            "storeEnable"
        }
    .end annotation
.end method
