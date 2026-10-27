.class public Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechRadioQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 5

    .line 32
    const-string v0, "radio.dsp"

    const-string v1, "radio.state"

    const-string v2, "radio.volume.focus"

    const-string v3, "radio.frequency"

    const-string v4, "radio.mode"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

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
    const-string v0, "radio.frequency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "radio.volume.focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "radio.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "radio.dsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "radio.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->getAudioMode(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->getRadioFrequency(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->getRadioVolumeAutoFocus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->getRadioStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->getAudioDspStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57606322 -> :sswitch_4
        -0x39e5f2b2 -> :sswitch_3
        -0x2d45c4a -> :sswitch_2
        0x37569417 -> :sswitch_1
        0x5bf96f29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
