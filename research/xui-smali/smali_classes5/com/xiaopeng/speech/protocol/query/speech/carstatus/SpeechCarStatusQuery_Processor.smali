.class public Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechCarStatusQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 8

    .line 38
    const-string v0, "status.cur.mode"

    const-string v1, "status.ac.power"

    const-string v2, "status.ac.qualitypurge"

    const-string v3, "status.ac.tempdrivervalue"

    const-string v4, "status.ac.temppsnvalue"

    const-string v5, "status.ac.windspeedlevel"

    const-string v6, "status.ac.windblowmode"

    const-string v7, "status.ac.circulationmode"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

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
    const-string v0, "status.ac.windspeedlevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "status.ac.windblowmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "status.ac.power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "status.cur.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "status.ac.temppsnvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "status.ac.circulationmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "status.ac.qualitypurge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "status.ac.tempdrivervalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcCirculationMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcTempPsnValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcTempDriverValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcQualityPurgeStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcPowerStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x576ef05b -> :sswitch_7
        -0x1446d8a4 -> :sswitch_6
        0x2a06d9a -> :sswitch_5
        0x8ce05aa -> :sswitch_4
        0x1e954b0d -> :sswitch_3
        0x263c52b5 -> :sswitch_2
        0x55b658ad -> :sswitch_1
        0x74f411f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
