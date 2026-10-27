.class public Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode_Processor;
.super Ljava/lang/Object;
.source "ThirdMusicAppNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 3

    const-string v0, "gui.media.app.demand"

    const-string v1, "gui.media.app.demand.recent"

    const-string v2, "gui.media.app.demand.subscribe"

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

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

    goto :goto_0

    :sswitch_0
    const-string v0, "gui.media.app.demand.recent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "gui.media.app.demand.subscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "gui.media.app.demand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->onMusicPlayRecent(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->onMusicPlaySubscribe(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->onMusicPlayDemand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x662638ab -> :sswitch_2
        0x195e91f1 -> :sswitch_1
        0x21512b14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
