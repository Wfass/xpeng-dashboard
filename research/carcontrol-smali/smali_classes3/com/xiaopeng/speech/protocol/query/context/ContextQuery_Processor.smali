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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 9

    const-string v0, "context.widget.list.size"

    const-string v1, "context.widget.page.size"

    const-string v2, "context.widget.curr.location"

    const-string v3, "context.widget.id"

    const-string v4, "context.widget.type"

    const-string v5, "context.widget.info"

    const-string v6, "context.info.list.top"

    const-string v7, "context.info.list.bottom"

    const-string v8, "context.info.list.onepage"

    .line 40
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "context.widget.list.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "context.info.list.onepage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "context.info.list.bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "context.widget.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "context.widget.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "context.widget.page.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "context.info.list.top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "context.widget.id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "context.widget.curr.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetListSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowOnePage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowScrollToBottom(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetPageSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getInfoFlowScrollToTop(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/context/ContextQuery;->getWidgetCurrLocation(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

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
