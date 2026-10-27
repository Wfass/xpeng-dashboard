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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 8

    const-string v0, "status.cur.mode"

    const-string v1, "status.ac.power"

    const-string v2, "status.ac.qualitypurge"

    const-string v3, "status.ac.tempdrivervalue"

    const-string v4, "status.ac.temppsnvalue"

    const-string v5, "status.ac.windspeedlevel"

    const-string v6, "status.ac.windblowmode"

    const-string v7, "status.ac.circulationmode"

    .line 38
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

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
    const-string v0, "status.ac.windspeedlevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "status.ac.windblowmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "status.ac.power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "status.cur.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "status.ac.temppsnvalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "status.ac.circulationmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "status.ac.qualitypurge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "status.ac.tempdrivervalue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcPowerStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcTempPsnValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcCirculationMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcQualityPurgeStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/carstatus/SpeechCarStatusQuery;->getAcTempDriverValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

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
