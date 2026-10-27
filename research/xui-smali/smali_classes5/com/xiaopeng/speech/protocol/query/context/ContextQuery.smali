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

    .line 11
    return-void
.end method


# virtual methods
.method protected getInfoFlowOnePage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.list.onepage"
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowOnePage()I

    move-result v0

    return v0
.end method

.method protected getInfoFlowScrollToBottom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.list.bottom"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowScrollToBottom()I

    move-result v0

    return v0
.end method

.method protected getInfoFlowScrollToTop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.info.list.top"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getInfoFlowScrollToTop()I

    move-result v0

    return v0
.end method

.method protected getWidgetCurrLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.curr.location"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetCurrLocation()I

    move-result v0

    return v0
.end method

.method protected getWidgetId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.id"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWidgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.info"
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWidgetListSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.list.size"
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetListSize()I

    move-result v0

    return v0
.end method

.method protected getWidgetPageSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.page.size"
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetPageSize()I

    move-result v0

    return v0
.end method

.method protected getWidgetType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "context.widget.type"
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/context/IContextCaller;->getWidgetType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
