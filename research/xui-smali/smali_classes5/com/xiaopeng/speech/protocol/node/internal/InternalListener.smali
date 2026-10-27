.class public interface abstract Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;
.super Ljava/lang/Object;
.source "InternalListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onDmOutput(Ljava/lang/String;)V
.end method

.method public abstract onInputDmData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLocalWakeupResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLocalWakeupResultWithChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRebootComplete(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onResourceUpdateFinish(Ljava/lang/String;Ljava/lang/String;)V
.end method
