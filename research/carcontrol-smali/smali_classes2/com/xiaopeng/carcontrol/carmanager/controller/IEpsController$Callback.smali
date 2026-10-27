.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController$Callback;
.super Ljava/lang/Object;
.source "IEpsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onSteeringAngleChanged(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    return-void
.end method

.method public onSteeringEpsChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation

    return-void
.end method
