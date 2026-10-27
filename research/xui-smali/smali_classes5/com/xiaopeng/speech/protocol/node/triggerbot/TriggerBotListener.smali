.class public interface abstract Lcom/xiaopeng/speech/protocol/node/triggerbot/TriggerBotListener;
.super Ljava/lang/Object;
.source "TriggerBotListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public onTriggerExit(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "triggerID"    # Ljava/lang/Integer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 8
    return-void
.end method

.method public onTriggerResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 6
    return-void
.end method
