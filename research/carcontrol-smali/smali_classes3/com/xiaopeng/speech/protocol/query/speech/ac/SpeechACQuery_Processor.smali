.class public Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechACQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 21

    const-string v0, "ac.power"

    const-string v1, "ac.driver.temp"

    const-string v2, "ac.driver.psn"

    const-string v3, "ac.sync.state"

    const-string v4, "ac.auto.mode"

    const-string v5, "ac.auto.mode.lv"

    const-string v6, "ac.circulation.mode"

    const-string v7, "ac.front.defrost"

    const-string v8, "ac.wind.mode"

    const-string v9, "ac.wind.speed.lv"

    const-string v10, "ac.quality.state"

    const-string v11, "ac.pm25.value"

    const-string v12, "ac.quality.outside.state"

    const-string v13, "ac.quality.outside.lv"

    const-string v14, "ac.back.defrost.state"

    const-string v15, "ac.back.mirror.heat.state"

    const-string v16, "ac.seat.heat.lv"

    const-string v17, "ac.seat.blow.lv"

    const-string v18, "ac.inner.temp"

    const-string v19, "ac.psn.seat.heat.lv"

    const-string v20, "ac.outter.temp"

    .line 64
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

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
    const-string v0, "ac.driver.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ac.back.mirror.heat.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "ac.wind.speed.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ac.sync.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ac.wind.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ac.outter.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "ac.quality.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "ac.inner.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "ac.driver.psn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "ac.psn.seat.heat.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "ac.power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "ac.auto.mode.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "ac.back.defrost.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "ac.seat.heat.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_e
    const-string v0, "ac.front.defrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string v0, "ac.seat.blow.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "ac.auto.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "ac.quality.outside.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "ac.circulation.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_13
    const-string v0, "ac.pm25.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_14
    const-string v0, "ac.quality.outside.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacTempDriverValue(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getBCMBackMirrorHeatMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacWindSpeedLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacTempSyncMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacWindBlowMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacOutterTemp(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacQualityPurgeMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacInnerTemp(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacTempPsnValue(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getPsnSeatHeatLv(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacPowerMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacAutoModeBlowLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getBCMBackDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getBCMSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacFrontDefrostMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getBCMSeatBlowLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacAutoMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacQualityOutsideStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacCirculationMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacQualityInnerPM25Value(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/ac/SpeechACQuery;->getHvacQualityOutsideLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x562403f2 -> :sswitch_14
        -0x517a2fb1 -> :sswitch_13
        -0x4a882a4a -> :sswitch_12
        -0x48c3e873 -> :sswitch_11
        -0x3bbd184a -> :sswitch_10
        -0x24777b57 -> :sswitch_f
        -0x6a6cae -> :sswitch_e
        0xc3555ab -> :sswitch_d
        0xf9ed24b -> :sswitch_c
        0x25d32ec2 -> :sswitch_b
        0x26386039 -> :sswitch_a
        0x327ae9ee -> :sswitch_9
        0x3dcb6951 -> :sswitch_8
        0x48d53db8 -> :sswitch_7
        0x4b98da16 -> :sswitch_6
        0x4d81cb03 -> :sswitch_5
        0x536ba4fd -> :sswitch_4
        0x589ab4ca -> :sswitch_3
        0x60f72eeb -> :sswitch_2
        0x762352a7 -> :sswitch_1
        0x7ba35e0e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
