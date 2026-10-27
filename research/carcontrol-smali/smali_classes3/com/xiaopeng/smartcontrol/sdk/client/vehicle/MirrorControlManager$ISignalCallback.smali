.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager$ISignalCallback;
.super Ljava/lang/Object;
.source "MirrorControlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISignalCallback"
.end annotation


# static fields
.field public static final REAR_MIRROR_POS_FOLDDED:I = 0x2

.field public static final REAR_MIRROR_POS_MIDDLE:I = 0x1

.field public static final REAR_MIRROR_POS_UNFOLDDED:I


# virtual methods
.method public onMirrorFoldStateChanged(I)V
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
