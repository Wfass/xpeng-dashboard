.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IRawSignalReceiver;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRawSignalReceiver"
.end annotation


# virtual methods
.method public abstract onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation
.end method
