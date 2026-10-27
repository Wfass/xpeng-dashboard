.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;
.super Ljava/lang/Object;
.source "IBaseManager.java"


# virtual methods
.method public abstract addRawSignalCallback(Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract addSignalCallback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract clearRawSignalCallback()V
.end method

.method public abstract clearSignalCallback()V
.end method

.method public abstract removeRawSignalCallback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract removeSignalCallback(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
