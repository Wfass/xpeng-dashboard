.class public Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechRadarQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 6

    .line 34
    const-string v0, "radar.front.data"

    const-string v1, "radar.tail.data"

    const-string v2, "radar.front.lv"

    const-string v3, "radar.tail.lv"

    const-string v4, "radar.front.fault"

    const-string v5, "radar.tail.fault"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
    const-string v0, "radar.tail.fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "radar.front.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "radar.tail.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "radar.front.fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "radar.tail.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "radar.front.lv"

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

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarData(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarData(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7c9e5aa9 -> :sswitch_5
        -0x25f40260 -> :sswitch_4
        -0x348ccb -> :sswitch_3
        0x2e942100 -> :sswitch_2
        0x3189c837 -> :sswitch_1
        0x678feaec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
