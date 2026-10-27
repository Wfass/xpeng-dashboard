.class public Lcom/xiaopeng/xuiservice/message/IpcRouterService;
.super Ljava/lang/Object;
.source "IpcRouterService.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IServicePublisher;


# annotations
.annotation build Lcom/xiaopeng/lib/apirouter/server/ApplicationId;
    value = "com.xiaopeng.xuiservice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiverData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/lib/apirouter/server/Publish;
    .end annotation

    .line 12
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/message/PushMessage;->dispatchCloudMessage(Ljava/lang/String;)V

    .line 13
    return-void
.end method
