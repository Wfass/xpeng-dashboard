.class public Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;
.super Ljava/lang/Object;
.source "ControlCardNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    .line 11
    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 11

    .line 54
    const-string v0, "command://card.ac.temp"

    const-string v1, "command://card.ac.temp.driver"

    const-string v2, "command://card.ac.temp.passenger"

    const-string v3, "command://card.ac.wind"

    const-string v4, "command://card.control.light.atmosphere.brightness"

    const-string v5, "command://card.control.light.atmosphere.color"

    const-string v6, "command://card.ac.seat.heating.driver"

    const-string v7, "command://card.ac.seat.heating.passenger"

    const-string v8, "command://card.ac.seat.ventilate.driver"

    const-string v9, "command://card.system.screen.brightness"

    const-string v10, "command://card.system.icm.brightness"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://card.control.light.atmosphere.brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://card.control.light.atmosphere.color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "command://card.ac.seat.heating.passenger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "command://card.ac.temp.driver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "command://card.ac.temp.passenger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "command://card.ac.seat.heating.driver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "command://card.ac.wind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "command://card.ac.temp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v0, "command://card.system.icm.brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_9
    const-string v0, "command://card.system.screen.brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "command://card.ac.seat.ventilate.driver"

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

    goto :goto_2

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showSystemIcmBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    goto :goto_2

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showSystemScreenBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_2

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcSeatVentilateDriverCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_2

    .line 37
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcSeatHeatingPassengerCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_2

    .line 34
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcSeatHeatingDriverCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto :goto_2

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAtmosphereBrightnessColorCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_2

    .line 28
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAtmosphereBrightnessCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    goto :goto_2

    .line 25
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcWindCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    goto :goto_2

    .line 22
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcPassengerTempCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    goto :goto_2

    .line 19
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcDriverTempCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_2

    .line 16
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/controlcard/ControlCardNode;->showAcTempCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    nop

    .line 51
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fb91358 -> :sswitch_a
        -0x2e6d8bdd -> :sswitch_9
        -0xc3aa084 -> :sswitch_8
        0x563bb31 -> :sswitch_7
        0x5652765 -> :sswitch_6
        0x1ba5a7b0 -> :sswitch_5
        0x20ddda1d -> :sswitch_4
        0x4598b985 -> :sswitch_3
        0x6b95b812 -> :sswitch_2
        0x718c98ef -> :sswitch_1
        0x7d9cda45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
