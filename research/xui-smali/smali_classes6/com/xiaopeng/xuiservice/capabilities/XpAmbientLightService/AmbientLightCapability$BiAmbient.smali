.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiAmbient"
.end annotation


# instance fields
.field private bilog:Lcom/xiaopeng/biutil/BiLog;

.field private msg:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "event"    # I
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;

    .line 1612
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    const-string v0, "P10141"

    const-string v1, "B012"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    .line 1613
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1614
    .local v0, "params":Lorg/json/JSONObject;
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    .line 1616
    if-nez p2, :cond_1

    const-string v1, "on"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1617
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 1618
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1617
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1622
    .local v1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v2, "mode"

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1623
    const-string v2, "colorType"

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "double"

    goto :goto_0

    :cond_0
    const-string v3, "mono"

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1624
    const-string v2, "monoColor"

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1625
    const-string v2, "doubleColor"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1626
    const-string v2, "bright"

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getAmbientLightBright()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    goto :goto_1

    .line 1627
    :catch_0
    move-exception p1

    .line 1631
    .end local v1    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "event"

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->parseEvent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "result"

    invoke-virtual {p1, v1, p3}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "source"

    invoke-virtual {p1, v1, p4}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "params"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;

    .line 1574
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->submit()V

    return-void
.end method

.method private parseEvent(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 1579
    packed-switch p1, :pswitch_data_0

    .line 1596
    const-string v0, "unknown"

    return-object v0

    .line 1593
    :pswitch_0
    const-string v0, "colorType"

    return-object v0

    .line 1591
    :pswitch_1
    const-string v0, "bright"

    return-object v0

    .line 1589
    :pswitch_2
    const-string v0, "doubleColor"

    return-object v0

    .line 1587
    :pswitch_3
    const-string v0, "monoColor"

    return-object v0

    .line 1585
    :pswitch_4
    const-string v0, "effect"

    return-object v0

    .line 1583
    :pswitch_5
    const-string v0, "mode"

    return-object v0

    .line 1581
    :pswitch_6
    const-string v0, "power"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private submit()V
    .locals 4

    .line 1600
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1601
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1602
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1604
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1608
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1605
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->msg:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1606
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1610
    :goto_1
    return-void
.end method
