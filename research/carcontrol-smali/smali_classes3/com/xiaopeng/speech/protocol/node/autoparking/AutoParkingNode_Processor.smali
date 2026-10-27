.class public Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;
.super Ljava/lang/Object;
.source "AutoParkingNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    return-void
.end method


# virtual methods
.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 6

    const-string v0, "command://autoparking.activate"

    const-string v1, "command://autoparking.exit"

    const-string v2, "command://autoparking.park.start"

    const-string v3, "native://autoparking.park.carport.count"

    const-string v4, "command://control.car.favoriteslotparking.on"

    const-string v5, "command://unmannedparking.activate"

    .line 39
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
    const-string v0, "command://autoparking.activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "command://autoparking.park.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "command://control.car.favoriteslotparking.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "command://autoparking.exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "native://autoparking.park.carport.count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "command://unmannedparking.activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onActivate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onParkStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onMemoryParkingStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onParkCarportCount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onUnmannedParkingStart(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ca3745c -> :sswitch_5
        0x3997cfa -> :sswitch_4
        0x27429b32 -> :sswitch_3
        0x2c5d1c29 -> :sswitch_2
        0x35780072 -> :sswitch_1
        0x5d378d07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
