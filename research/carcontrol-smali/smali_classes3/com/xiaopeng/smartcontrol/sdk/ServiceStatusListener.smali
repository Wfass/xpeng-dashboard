.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/ServiceStatusListener;
.super Ljava/lang/Object;
.source "ServiceStatusListener.java"


# virtual methods
.method public abstract onServiceConnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation
.end method

.method public abstract onServiceDisconnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation
.end method
