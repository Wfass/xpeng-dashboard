.class public Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;
.super Ljava/lang/Object;
.source "CarAirQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 34

    .line 90
    const-string v0, "ac.support.auto.off"

    const-string v1, "ac.support.demist.foot"

    const-string v2, "ac.get.wind.max"

    const-string v3, "ac.get.wind.min"

    const-string v4, "ac.get.temp.max"

    const-string v5, "ac.get.temp.min"

    const-string v6, "ac.support.decimal.value"

    const-string v7, "ac.support.purifier"

    const-string v8, "ac.support.pm25"

    const-string v9, "ac.air.quality.level"

    const-string v10, "ac.support.seat.heat"

    const-string v11, "ac.support.psn.seat.heat"

    const-string v12, "ac.get.heat.max"

    const-string v13, "ac.get.heat.min"

    const-string v14, "ac.support.seat.blow"

    const-string v15, "ac.get.seat.blow.max"

    const-string v16, "ac.get.seat.blow.min"

    const-string v17, "ac.is.fast.fridge"

    const-string v18, "ac.is.fresh.air"

    const-string v19, "ac.support.temp.dual"

    const-string v20, "ac.wind.outlet.status"

    const-string v21, "ac.outside.air.status"

    const-string v22, "ac.wind.mode"

    const-string v23, "ac.mirror.rear.heat.status"

    const-string v24, "ac.outside.air.quality"

    const-string v25, "ac.dri.wind.direction.mode"

    const-string v26, "ac.psn.wind.direction.mode"

    const-string v27, "card.ac.panel.status"

    const-string v28, "ac.outside.air.quality.level"

    const-string v29, "ac.intelligent.passenger.status"

    const-string v30, "ac.support.rear.seat.heat"

    const-string v31, "ac.left.rear.seat.heat.lv"

    const-string v32, "ac.right.rear.seat.heat.lv"

    const-string v33, "ac.is.support.perfume"

    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ac.support.demist.foot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "ac.support.purifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ac.outside.air.quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ac.psn.wind.direction.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "ac.wind.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "ac.mirror.rear.heat.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "ac.support.auto.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "ac.right.rear.seat.heat.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "ac.is.fresh.air"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "ac.get.heat.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "ac.get.heat.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "ac.get.wind.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "ac.get.wind.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "ac.get.seat.blow.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "ac.get.seat.blow.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "ac.get.temp.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "ac.get.temp.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "ac.support.rear.seat.heat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "ac.dri.wind.direction.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "ac.is.support.perfume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "ac.support.pm25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "ac.is.fast.fridge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "ac.intelligent.passenger.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "ac.air.quality.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "ac.support.temp.dual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "ac.support.seat.heat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_1a
    const-string v0, "ac.support.seat.blow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_1b
    const-string v0, "card.ac.panel.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_1c
    const-string v0, "ac.wind.outlet.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1d
    const-string v0, "ac.support.decimal.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1e
    const-string v0, "ac.support.psn.seat.heat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_1f
    const-string v0, "ac.left.rear.seat.heat.lv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_20
    const-string v0, "ac.outside.air.quality.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_21
    const-string v0, "ac.outside.air.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isAcSupportPerfume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getRightRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getLeftRearSeatHeatLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportRearSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getIntelligentPassengerStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getPmLevelQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getAcPanelStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getPsnWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getDriWindDirectionMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getOutSidePmQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportMirrorHeat(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getWindMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportMpQuery(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getWindsStatus(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportTempDual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isFreshAir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isFastFridge(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getSeatBlowMin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getSeatBlowMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportSeatBlow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getHeatMin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getHeatMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportPsnSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportSeatHeat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getAirLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportPm25(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportPurifier(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportDecimalValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getTempMin(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getTempMax(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getWindMin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->getWindMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportDemistFoot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/carair/CarAirQuery;->isSupportAutoOff(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7d9e4db5 -> :sswitch_21
        -0x6ed73aa4 -> :sswitch_20
        -0x671f8f72 -> :sswitch_1f
        -0x543233d5 -> :sswitch_1e
        -0x4dae9c17 -> :sswitch_1d
        -0x4d4c9127 -> :sswitch_1c
        -0x4cc68176 -> :sswitch_1b
        -0x4c5b2430 -> :sswitch_1a
        -0x4c5885f2 -> :sswitch_19
        -0x441e47d5 -> :sswitch_18
        -0x349c5e9b -> :sswitch_17
        -0x201c9f57 -> :sswitch_16
        -0x1e6fb3a1 -> :sswitch_15
        -0x1e4fcdf5 -> :sswitch_14
        0xa5c22ad -> :sswitch_13
        0x1739bab9 -> :sswitch_12
        0x19db3bba -> :sswitch_11
        0x1dd9722e -> :sswitch_10
        0x1dd9731c -> :sswitch_f
        0x2726938d -> :sswitch_e
        0x2726947b -> :sswitch_d
        0x2a21a462 -> :sswitch_c
        0x2a21a550 -> :sswitch_b
        0x2b098e4a -> :sswitch_a
        0x2b098f38 -> :sswitch_9
        0x2eabaf12 -> :sswitch_8
        0x3258124b -> :sswitch_7
        0x4fca303b -> :sswitch_6
        0x52aa54e9 -> :sswitch_5
        0x536ba4fd -> :sswitch_4
        0x570f6fe9 -> :sswitch_3
        0x61b929c6 -> :sswitch_2
        0x6256f137 -> :sswitch_1
        0x7e564ff3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
