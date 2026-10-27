.class public interface abstract Lcom/xiaopeng/speech/protocol/node/message/MessageListener;
.super Ljava/lang/Object;
.source "MessageListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onAIMessage(I)V
.end method

.method public abstract onAIMessageDisable()V
.end method

.method public abstract onAIMessageDisableSevenDays()V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onCommonAIMessage(Ljava/lang/String;)V
.end method

.method public abstract onCommonCancel()V
.end method

.method public abstract onCommonSubmit()V
.end method

.method public abstract onHotWordEngineOK(Z)V
.end method

.method public abstract onParkingSelected(I)V
.end method

.method public abstract onPathChanged()V
.end method
