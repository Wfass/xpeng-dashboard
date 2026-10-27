.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager$ISignalCallback;
.super Ljava/lang/Object;
.source "LaboratoryManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISignalCallback"
.end annotation


# virtual methods
.method public onSentinelModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    return-void
.end method
