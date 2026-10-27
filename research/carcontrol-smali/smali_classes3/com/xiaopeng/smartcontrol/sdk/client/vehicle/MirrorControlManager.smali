.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager;
.super Ljava/lang/Object;
.source "MirrorControlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/MirrorControlManager$ISignalCallback;
    }
.end annotation


# virtual methods
.method public abstract foldMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation
.end method

.method public abstract getMirrorFoldState()I
.end method
