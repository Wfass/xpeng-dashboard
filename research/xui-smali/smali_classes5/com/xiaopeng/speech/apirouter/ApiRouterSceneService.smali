.class public Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;
.super Ljava/lang/Object;
.source "ApiRouterSceneService.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IServicePublisher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/lib/apirouter/server/Publish;
    .end annotation

    .line 22
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/XpSpeechEngine;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/lib/apirouter/server/Publish;
    .end annotation

    .line 16
    const-string v0, "ApiRouterSceneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u606f\u63a5\u6536 event== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/XpSpeechEngine;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
