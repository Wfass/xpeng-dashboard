.class public Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;
.super Ljava/lang/Object;
.source "MeterNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 3

    const-string v0, "set.meter.left.card"

    const-string v1, "set.meter.right.card"

    const-string v2, "native://meter.dashboard.lights.status"

    .line 30
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "set.meter.left.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "native://meter.dashboard.lights.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "set.meter.right.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->setLeftCard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->onDashboardLightsStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->setRightCard(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73d2d0cd -> :sswitch_2
        -0x574d119f -> :sswitch_1
        0x19cc7ee6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
