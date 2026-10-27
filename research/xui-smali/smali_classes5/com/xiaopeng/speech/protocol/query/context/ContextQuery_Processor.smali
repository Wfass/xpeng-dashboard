.class public Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;
.super Ljava/lang/Object;
.source "ContextQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 9

    .line 40
    const-string v0, "context.widget.list.size"

    const-string v1, "context.widget.page.size"

    const-string v2, "context.widget.curr.location"

    const-string v3, "context.widget.id"

    const-string v4, "context.widget.type"

    const-string v5, "context.widget.info"

    const-string v6, "context.info.list.top"

    const-string v7, "context.info.list.bottom"

    const-string v8, "context.info.list.onepage"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "context.widget.list.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "context.info.list.onepage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "context.info.list.bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "context.widget.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "context.widget.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "context.widget.page.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "context.info.list.top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "context.widget.id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "context.widget.curr.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowOnePage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowScrollToBottom(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowScrollToTop(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetCurrLocation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetPageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetListSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6a85735a -> :sswitch_8
        -0x12dc7c7a -> :sswitch_7
        -0xe37e0ba -> :sswitch_6
        -0x2ba7ccb -> :sswitch_5
        0x3250ec59 -> :sswitch_4
        0x325616e5 -> :sswitch_3
        0x48bbaa9a -> :sswitch_2
        0x7be06b66 -> :sswitch_1
        0x7fa0a686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
