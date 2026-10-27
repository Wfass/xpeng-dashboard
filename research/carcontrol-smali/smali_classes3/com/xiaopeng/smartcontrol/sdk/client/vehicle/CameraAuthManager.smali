.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager;
.super Ljava/lang/Object;
.source "CameraAuthManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/CameraAuthManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_AUTH_STATE_EXPIRED:I = 0x2

.field public static final CAMERA_AUTH_STATE_NO:I = 0x0

.field public static final CAMERA_AUTH_STATE_YES:I = 0x1


# virtual methods
.method public abstract getCameraAuthState()I
.end method

.method public abstract setCameraAuthState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
