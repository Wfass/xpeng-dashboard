.class public Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "ContextQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInfoFlowOnePage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowOnePage()I

    move-result p1

    return p1
.end method

.method protected getInfoFlowScrollToBottom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowScrollToBottom()I

    move-result p1

    return p1
.end method

.method protected getInfoFlowScrollToTop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowScrollToTop()I

    move-result p1

    return p1
.end method

.method protected getWidgetCurrLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetCurrLocation()I

    move-result p1

    return p1
.end method

.method protected getWidgetId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getWidgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getWidgetListSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetListSize()I

    move-result p1

    return p1
.end method

.method protected getWidgetPageSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetPageSize()I

    move-result p1

    return p1
.end method

.method protected getWidgetType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
