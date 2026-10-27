.class public Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechHardwareQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 13

    .line 48
    const-string v0, "hardware.mcu.id"

    const-string v1, "hardware.cpu.temp"

    const-string v2, "hardware.ipu.fail.info"

    const-string v3, "hardware.ctrl.volt"

    const-string v4, "hardware.ctrl.curr"

    const-string v5, "hardware.ctrl.temp"

    const-string v6, "hardware.motor.temp"

    const-string v7, "hardware.torque"

    const-string v8, "hardware.roll.speed"

    const-string v9, "hardware.motor.state"

    const-string v10, "hardware.car.type"

    const-string v11, "hardware.stream.type"

    const-string v12, "hardware.checklist"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

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
    const-string v0, "hardware.motor.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "hardware.checklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "hardware.motor.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "hardware.stream.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_4
    const-string v0, "hardware.torque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "hardware.mcu.id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "hardware.ipu.fail.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v0, "hardware.ctrl.volt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "hardware.ctrl.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "hardware.ctrl.curr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "hardware.roll.speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v0, "hardware.cpu.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "hardware.car.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getChecklistStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getStreamType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getCarType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getMotorStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getRollSpeed(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getTorque(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getMotorTemp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getCtrlTemp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getCtrlCurr(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getCtrlVolt(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getIpuFailStInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getCpuTemperature(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/SpeechHardwareQuery;->getMcuHardWareId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b73c1a6 -> :sswitch_c
        -0x4cd80a60 -> :sswitch_b
        -0x8caaca4 -> :sswitch_a
        0x1899ff4f -> :sswitch_9
        0x18a17cf1 -> :sswitch_8
        0x18a28b1e -> :sswitch_7
        0x55ad3e38 -> :sswitch_6
        0x57650690 -> :sswitch_5
        0x63ffacd0 -> :sswitch_4
        0x684129e2 -> :sswitch_3
        0x785efed2 -> :sswitch_2
        0x7e5ec920 -> :sswitch_1
        0x7fc13d73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
