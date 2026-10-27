.class public Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;
.super Ljava/lang/Object;
.source "ChargeQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 19

    .line 60
    const-string v0, "charge.support.open.port"

    const-string v1, "charge.get.start.status"

    const-string v2, "charge.get.stop.status"

    const-string v3, "charge.get.restart.status"

    const-string v4, "charge.support.limits.adjust"

    const-string v5, "charge.limits.adjust.min"

    const-string v6, "charge.limits.adjust.max"

    const-string v7, "charge.support.smart.mode"

    const-string v8, "charge.has.charging.order"

    const-string v9, "charge.is.ready.page"

    const-string v10, "powercenter.charge.status"

    const-string v11, "gui.page.open.status.charge"

    const-string v12, "charge.has.car.refrigerator"

    const-string v13, "charge.has.sun.roof"

    const-string v14, "charge.get.trunk.power.status"

    const-string v15, "charge.discharge.limit.min.value"

    const-string v16, "charge.discharge.limit.max.value"

    const-string v17, "charge.trunk.power.status.open"

    const-string v18, "charge.support.endurance.mode"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

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

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "charge.is.ready.page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "charge.trunk.power.status.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "charge.support.limits.adjust"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "charge.get.start.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "charge.discharge.limit.min.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "gui.page.open.status.charge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "charge.get.stop.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "charge.discharge.limit.max.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "powercenter.charge.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "charge.has.car.refrigerator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "charge.support.smart.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "charge.has.sun.roof"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_c
    const-string v0, "charge.limits.adjust.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v0, "charge.limits.adjust.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_e
    const-string v0, "charge.support.open.port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_f
    const-string v0, "charge.get.trunk.power.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_10
    const-string v0, "charge.get.restart.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_11
    const-string v0, "charge.support.endurance.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string v0, "charge.has.charging.order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isSupportEnduranceMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getTrunkPowerStatusForOpen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getMaxDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getMinDischargeLimit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getTrunkPowerStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->hasSunRoof(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->hasCarRefrigerator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getPageOpenStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getChargeStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isChargeReadyPage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isHasChargingOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isSupportSmartMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getLimitsAdjustMax(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getLimitsAdjustMin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isSupportLimitsAdjust(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getRestartStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getStopStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->getStartStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/charge/ChargeQuery;->isSupportOpenPort(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5dc8db21 -> :sswitch_12
        -0x4dc3165d -> :sswitch_11
        -0x3eb42c3d -> :sswitch_10
        -0x363a3ef9 -> :sswitch_f
        -0x26b45a74 -> :sswitch_e
        0x7f75961 -> :sswitch_d
        0x7f75a4f -> :sswitch_c
        0x8bcc504 -> :sswitch_b
        0xc65f3a1 -> :sswitch_a
        0x12eac108 -> :sswitch_9
        0x190dc318 -> :sswitch_8
        0x27aef20e -> :sswitch_7
        0x456bd58c -> :sswitch_6
        0x5096c598 -> :sswitch_5
        0x55ba087c -> :sswitch_4
        0x59661690 -> :sswitch_3
        0x6f2ab68c -> :sswitch_2
        0x70b5e469 -> :sswitch_1
        0x7ba3f584 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
