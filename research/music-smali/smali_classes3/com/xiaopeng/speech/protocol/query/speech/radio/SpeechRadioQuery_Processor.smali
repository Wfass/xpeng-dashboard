.class public Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechRadioQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "radio.frequency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "radio.volume.focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "radio.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

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

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->f(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->e(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/radio/SpeechRadioQuery;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x57606322 -> :sswitch_4
        -0x39e5f2b2 -> :sswitch_3
        -0x2d45c4a -> :sswitch_2
        0x37569417 -> :sswitch_1
        0x5bf96f29 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 5

    const-string v0, "radio.dsp"

    const-string v1, "radio.state"

    const-string v2, "radio.volume.focus"

    const-string v3, "radio.frequency"

    const-string v4, "radio.mode"

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
