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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 6

    const-string v0, "radar.front.data"

    const-string v1, "radar.tail.data"

    const-string v2, "radar.front.lv"

    const-string v3, "radar.tail.lv"

    const-string v4, "radar.front.fault"

    const-string v5, "radar.tail.fault"

    .line 34
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
    const-string v0, "radar.tail.fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "radar.front.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "radar.tail.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "radar.front.fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "radar.tail.data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "radar.front.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarData(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarFaultSt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getTailRadarData(Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radar/SpeechRadarQuery;->getFrontRadarLevel(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

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
