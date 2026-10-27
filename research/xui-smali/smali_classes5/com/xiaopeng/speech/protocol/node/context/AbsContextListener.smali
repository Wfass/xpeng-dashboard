.class public abstract Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;
.super Ljava/lang/Object;
.source "AbsContextListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/context/ContextListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitRecommendCard()V
    .locals 0

    .line 134
    return-void
.end method

.method public onExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onInputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 15
    return-void
.end method

.method public onLLMInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 159
    return-void
.end method

.method public onOutputText(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 21
    return-void
.end method

.method public onPageNext()V
    .locals 0

    .line 96
    return-void
.end method

.method public onPagePrev()V
    .locals 0

    .line 101
    return-void
.end method

.method public onPageSetLow()V
    .locals 0

    .line 106
    return-void
.end method

.method public onPageTopping()V
    .locals 0

    .line 111
    return-void
.end method

.method public onSayWelcome(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 76
    return-void
.end method

.method public onScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onScriptStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 125
    return-void
.end method

.method public onSmartSceneCreate(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 154
    return-void
.end method

.method public onTipsText(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onWidgetCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;
    .param p2, "cancelWay"    # Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onWidgetCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onWidgetCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public onWidgetList(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public onWidgetListCancelFocus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 116
    return-void
.end method

.method public onWidgetListExpend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 139
    return-void
.end method

.method public onWidgetListFocus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 52
    return-void
.end method

.method public onWidgetListFold(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 144
    return-void
.end method

.method public onWidgetListSelect(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 86
    return-void
.end method

.method public onWidgetListSelect(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method public onWidgetListStopCountdown()V
    .locals 0

    .line 149
    return-void
.end method

.method public onWidgetMedia(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public onWidgetRecommend(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 61
    return-void
.end method

.method public onWidgetScroll(Ljava/lang/String;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 81
    return-void
.end method

.method public onWidgetSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 66
    return-void
.end method

.method public onWidgetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 36
    return-void
.end method
