.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;
.super Ljava/lang/Object;
.source "ICarInfoController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCarLicensePlate()Ljava/lang/String;
.end method

.method public abstract requestCarLicensePlate()V
.end method

.method public abstract setCarLicensePlate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "licensePlate"
        }
    .end annotation
.end method
