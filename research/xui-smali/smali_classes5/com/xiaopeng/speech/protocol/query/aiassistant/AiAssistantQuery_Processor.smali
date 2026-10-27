.class public Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;
.super Ljava/lang/Object;
.source "AiAssistantQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 2

    .line 26
    const-string v0, "gui.ai.video.open"

    const-string v1, "ai.get.skin.type"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x438326d3

    if-eq v0, v1, :cond_1

    const v1, -0x1dad2e10

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "gui.ai.video.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "ai.get.skin.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 21
    const/4 v0, 0x0

    return-object v0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->getAiSkinType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->getAiVideoOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
