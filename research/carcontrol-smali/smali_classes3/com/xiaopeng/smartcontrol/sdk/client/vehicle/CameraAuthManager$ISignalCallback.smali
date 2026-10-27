.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager$ISignalCallback;
.super Ljava/lang/Object;
.source "CameraAuthManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISignalCallback"
.end annotation


# virtual methods
.method public onCameraAuthStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method
