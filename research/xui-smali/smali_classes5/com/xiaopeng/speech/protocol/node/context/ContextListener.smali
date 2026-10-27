.class public interface abstract Lcom/xiaopeng/speech/protocol/node/context/ContextListener;
.super Ljava/lang/Object;
.source "ContextListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onExitRecommendCard()V
.end method

.method public abstract onExpression(Ljava/lang/String;)V
.end method

.method public abstract onInputText(Ljava/lang/String;)V
.end method

.method public onLLMInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 269
    return-void
.end method

.method public abstract onOutputText(Ljava/lang/String;)V
.end method

.method public abstract onPageNext()V
.end method

.method public abstract onPagePrev()V
.end method

.method public abstract onPageSetLow()V
.end method

.method public abstract onPageTopping()V
.end method

.method public abstract onSayWelcome(Ljava/lang/String;)V
.end method

.method public abstract onScript(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onSmartSceneCreate(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 262
    return-void
.end method

.method public onTipsListeningShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 242
    return-void
.end method

.method public onTipsListeningStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 249
    return-void
.end method

.method public abstract onTipsText(Ljava/lang/String;)V
.end method

.method public onTtsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;)V
    .locals 0
    .param p1, "echo"    # Lcom/xiaopeng/speech/protocol/node/tts/TtsEcho;

    .line 256
    return-void
.end method

.method public abstract onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWidgetCard(Ljava/lang/String;)V
.end method

.method public abstract onWidgetCustom(Ljava/lang/String;)V
.end method

.method public abstract onWidgetList(Ljava/lang/String;)V
.end method

.method public abstract onWidgetListCancelFocus(Ljava/lang/String;I)V
.end method

.method public onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 228
    return-void
.end method

.method public abstract onWidgetListFocus(Ljava/lang/String;I)V
.end method

.method public onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 220
    return-void
.end method

.method public abstract onWidgetListSelect(Ljava/lang/String;I)V
.end method

.method public abstract onWidgetListSelect(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public onWidgetListStopCountdown()V
    .locals 0

    .line 235
    return-void
.end method

.method public abstract onWidgetMedia(Ljava/lang/String;)V
.end method

.method public abstract onWidgetRecommend(Ljava/lang/String;)V
.end method

.method public abstract onWidgetScroll(Ljava/lang/String;I)V
.end method

.method public abstract onWidgetSearch(Ljava/lang/String;)V
.end method

.method public abstract onWidgetText(Ljava/lang/String;)V
.end method
