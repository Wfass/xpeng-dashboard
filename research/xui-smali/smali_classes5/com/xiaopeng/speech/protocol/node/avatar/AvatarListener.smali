.class public interface abstract Lcom/xiaopeng/speech/protocol/node/avatar/AvatarListener;
.super Ljava/lang/Object;
.source "AvatarListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onAvatarExpression(Ljava/lang/String;)V
.end method

.method public onAvatarStatusChanged(Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    .line 164
    return-void
.end method

.method public abstract onAvatarWakerupDisable(Ljava/lang/String;)V
.end method

.method public abstract onAvatarWakerupEnable(Ljava/lang/String;)V
.end method

.method public abstract onListening(Lcom/xiaopeng/speech/jarvisproto/DMListening;)V
.end method

.method public onPersonalRun()V
    .locals 0

    .line 56
    return-void
.end method

.method public onPersonalRunExit()V
    .locals 0

    .line 63
    return-void
.end method

.method public abstract onSilence(Lcom/xiaopeng/speech/jarvisproto/DMRecognized;)V
.end method

.method public abstract onSpeaking()V
.end method

.method public abstract onStandby()V
.end method

.method public abstract onUnderstanding()V
.end method

.method public abstract onWidgetCard(Ljava/lang/String;)V
.end method

.method public abstract onWidgetCustom(Ljava/lang/String;)V
.end method

.method public abstract onWidgetList(Ljava/lang/String;)V
.end method

.method public abstract onWidgetMedia(Ljava/lang/String;)V
.end method

.method public abstract onWidgetSearch(Ljava/lang/String;)V
.end method

.method public abstract onWidgetText(Ljava/lang/String;)V
.end method
