.class public Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;
.super Ljava/lang/Object;
.source "AiAssistantQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x438326d3

    const/4 v2, 0x1

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

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/aiassistant/AiAssistantQuery;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "gui.ai.video.open"

    const-string v1, "ai.get.skin.type"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
