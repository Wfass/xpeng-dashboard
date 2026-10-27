.class public Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;
.super Ljava/lang/Object;
.source "ChargeNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://charge.change.cltc.mileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://charge.change.nedc.mileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://charge.ui.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://charge.discharge.limit.value.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://charge.ui.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://charge.mode.smart.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://charge.change.dynamic.mileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://charge.trankpower.power.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://charge.mode.full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "command://charge.mode.percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "command://charge.mode.smart.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v0, "command://charge.port.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_c
    const-string v0, "command://charge.mode.smart.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_d
    const-string v0, "command://charge.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "command://charge.trankpower.power.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_f
    const-string v0, "command://charge.change.wltp.mileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_10
    const-string v0, "command://charge.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_11
    const-string v0, "command://charge.restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x752e58fc -> :sswitch_11
        -0x67667969 -> :sswitch_10
        -0x5fe79d20 -> :sswitch_f
        -0x49c24dba -> :sswitch_e
        -0x3d2454d3 -> :sswitch_d
        -0x35890b8d -> :sswitch_c
        -0x346f70b4 -> :sswitch_b
        -0x273d956 -> :sswitch_a
        0xb4ca325 -> :sswitch_9
        0x108f4faf -> :sswitch_8
        0x117895e8 -> :sswitch_7
        0x1e790248 -> :sswitch_6
        0x20f40144 -> :sswitch_5
        0x2c895659 -> :sswitch_4
        0x39d4bc7b -> :sswitch_3
        0x63f6afc9 -> :sswitch_2
        0x7c87fa45 -> :sswitch_1
        0x7ebdd467 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public a()[Ljava/lang/String;
    .locals 18

    const-string v0, "command://charge.port.open"

    const-string v1, "command://charge.start"

    const-string v2, "command://charge.restart"

    const-string v3, "command://charge.stop"

    const-string v4, "command://charge.ui.open"

    const-string v5, "command://charge.ui.close"

    const-string v6, "command://charge.mode.percent"

    const-string v7, "command://charge.mode.full"

    const-string v8, "command://charge.mode.smart.on"

    const-string v9, "command://charge.mode.smart.close"

    const-string v10, "command://charge.mode.smart.off"

    const-string v11, "command://charge.change.wltp.mileage"

    const-string v12, "command://charge.change.nedc.mileage"

    const-string v13, "command://charge.trankpower.power.on"

    const-string v14, "command://charge.trankpower.power.off"

    const-string v15, "command://charge.discharge.limit.value.set"

    const-string v16, "command://charge.change.cltc.mileage"

    const-string v17, "command://charge.change.dynamic.mileage"

    .line 75
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
