.class public Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechChargeQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 25

    const-string v0, "charge.add.electri"

    const-string v1, "charge.charging.error"

    const-string v2, "charge.charging.gun.state"

    const-string v3, "charge.charging.state"

    const-string v4, "charge.mileage.num"

    const-string v5, "charge.wltp.mileage.num"

    const-string v6, "charge.cltc.mileage.num"

    const-string v7, "charge.dynamic.mileage.num"

    const-string v8, "charge.endurance.mileage.mode"

    const-string v9, "charge.electric.percent"

    const-string v10, "charge.cold.warn.tip"

    const-string v11, "charge.hvac.consume"

    const-string v12, "charge.battery.warm.state"

    const-string v13, "charge.ac.charging.current"

    const-string v14, "charge.ac.charging.volt"

    const-string v15, "charge.dc.charging.current"

    const-string v16, "charge.dc.charging.volt"

    const-string v17, "charge.ac.input.state"

    const-string v18, "charge.aver.veh.consume"

    const-string v19, "charge.charging.max.soc"

    const-string v20, "charge.soh"

    const-string v21, "charge.gun.lock.st"

    const-string v22, "charge.get.limit.soc"

    const-string v23, "charge.battery.cool.state"

    const-string v24, "charge.get.aver.consume.100km"

    .line 72
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

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
    const-string v0, "charge.dynamic.mileage.num"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "charge.ac.charging.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "charge.soh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "charge.charging.max.soc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "charge.battery.warm.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "charge.endurance.mileage.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "charge.charging.gun.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "charge.electric.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "charge.ac.charging.volt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "charge.get.limit.soc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "charge.hvac.consume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "charge.cltc.mileage.num"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "charge.get.aver.consume.100km"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "charge.ac.input.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "charge.cold.warn.tip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "charge.charging.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "charge.charging.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "charge.battery.cool.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "charge.aver.veh.consume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "charge.wltp.mileage.num"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "charge.dc.charging.volt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "charge.dc.charging.current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "charge.add.electri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "charge.gun.lock.st"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "charge.mileage.num"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getDynamicMileageNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getACChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getSOH(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargingMaxSoc(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getBatteryWarmingStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getEnduranceMileageMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargingGunStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getElectricityPercent(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getACChargingVolt(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargeLimitSoc(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getHvacConsume(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getCltcMileageNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getAverageVehConsume100km(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getACInputStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getColdWarningTips(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargingError(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getBatteryCoolStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getAverageVehConsume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getWltpMileageNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getDCChargingVolt(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getDCChargingCurrent(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getAddedElectricity(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getChargeGunLockSt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/charge/SpeechChargeQuery;->getMileageNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7de513d8 -> :sswitch_18
        -0x5d1dd0e4 -> :sswitch_17
        -0x55577081 -> :sswitch_16
        -0x3f0005af -> :sswitch_15
        -0x3d9ffbd7 -> :sswitch_14
        -0x38de9e01 -> :sswitch_13
        -0x374aa1ab -> :sswitch_12
        -0x2bd2fa59 -> :sswitch_11
        -0x28d6813b -> :sswitch_10
        -0x28108eb2 -> :sswitch_f
        -0x1b6c20bd -> :sswitch_e
        -0x160f1fe5 -> :sswitch_d
        0x6466767 -> :sswitch_c
        0xb14b806 -> :sswitch_b
        0x11da76b8 -> :sswitch_a
        0x175d5e82 -> :sswitch_9
        0x1daa6a8c -> :sswitch_8
        0x245ebc6e -> :sswitch_7
        0x32ff58a0 -> :sswitch_6
        0x39331948 -> :sswitch_5
        0x3ab58be3 -> :sswitch_4
        0x3d2b6b7a -> :sswitch_3
        0x54754f52 -> :sswitch_2
        0x5800d50e -> :sswitch_1
        0x6f2d76f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
