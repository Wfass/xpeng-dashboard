.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager;
.super Ljava/lang/Object;
.source "LaboratoryManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/settings/LaboratoryManager$ISignalCallback;
    }
.end annotation


# virtual methods
.method public abstract isSentinelMode()Z
.end method

.method public abstract setSentinelMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method
