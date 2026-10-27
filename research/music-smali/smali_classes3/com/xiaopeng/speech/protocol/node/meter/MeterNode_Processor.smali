.class public Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;
.super Ljava/lang/Object;
.source "MeterNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x73d2d0cd

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x574d119f

    if-eq v0, v1, :cond_1

    const v1, 0x19cc7ee6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "set.meter.left.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "native://meter.dashboard.lights.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "set.meter.right.card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/meter/MeterNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    const-string v0, "set.meter.left.card"

    const-string v1, "set.meter.right.card"

    const-string v2, "native://meter.dashboard.lights.status"

    .line 30
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
