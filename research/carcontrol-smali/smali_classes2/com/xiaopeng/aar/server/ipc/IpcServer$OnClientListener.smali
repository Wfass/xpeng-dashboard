.class public interface abstract Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;
.super Ljava/lang/Object;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ipc/IpcServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClientListener"
.end annotation


# virtual methods
.method public abstract onCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract onClientDied()V
.end method
