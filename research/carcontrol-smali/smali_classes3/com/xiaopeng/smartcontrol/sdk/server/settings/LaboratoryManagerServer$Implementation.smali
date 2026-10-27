.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer$Implementation;
.super Ljava/lang/Object;
.source "LaboratoryManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/settings/LaboratoryManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
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
