.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;
.super Landroid/os/Handler;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1416
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 1419
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1540
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 1541
    .local v2, "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getPriority()I

    move-result v5

    .line 1542
    .local v5, "priority":I
    const/4 v6, 0x0

    .line 1544
    .local v6, "ttsId":Ljava/lang/String;
    iget v7, v1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v7, v8, :cond_13

    .line 1545
    const-string v7, "SmartAlarmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle delay message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1514
    .end local v2    # "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    .end local v5    # "priority":I
    .end local v6    # "ttsId":Ljava/lang/String;
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1515
    .local v2, "ttsId":Ljava/lang/String;
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1516
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 1518
    .local v5, "event":I
    const-string v6, "SmartAlarmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSpeechTts "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v8, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ttsId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1521
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1522
    .local v6, "key":J
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 1524
    .local v8, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3700(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1525
    if-nez v5, :cond_0

    .line 1526
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->addTtsStartTime()V

    .line 1527
    goto :goto_0

    .line 1529
    :cond_0
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v9, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->submit(ILjava/lang/String;)V

    .line 1531
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->isCompleted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1532
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .end local v6    # "key":J
    :cond_1
    goto :goto_0

    .line 1469
    .end local v2    # "ttsId":Ljava/lang/String;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v5    # "event":I
    .end local v8    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1470
    .local v2, "event":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1471
    .local v5, "streamId":I
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 1473
    .local v6, "signal":I
    const-string v7, "SmartAlarmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPlaySound "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v9, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", signal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", streamId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const/4 v7, 0x4

    if-ne v2, v7, :cond_2

    .line 1478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1479
    .local v7, "ts":J
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {v3, v9, v6, v7, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;IJ)V

    .line 1481
    .local v3, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    const-string v9, ""

    const-string v10, "replay"

    invoke-virtual {v3, v9, v4, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->addSound(Ljava/lang/String;ILjava/lang/String;)V

    .line 1482
    invoke-static {v3, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3402(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;I)I

    .line 1483
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    .end local v7    # "ts":J
    goto/16 :goto_12

    .line 1485
    .end local v3    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    :cond_2
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1487
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1488
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1489
    .local v8, "key":J
    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 1491
    .local v10, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    if-eqz v10, :cond_9

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1492
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)I

    move-result v11

    if-ne v5, v11, :cond_3

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v4

    .line 1493
    .local v11, "hasStream":Z
    :goto_2
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)I

    move-result v12

    if-ne v6, v12, :cond_4

    move v12, v3

    goto :goto_3

    :cond_4
    move v12, v4

    .line 1495
    .local v12, "hasSignal":Z
    :goto_3
    if-nez v2, :cond_6

    .line 1496
    if-eqz v12, :cond_5

    .line 1497
    invoke-static {v10, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3402(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;I)I

    .line 1498
    goto :goto_1

    .line 1499
    :cond_5
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)I

    move-result v13

    if-eqz v13, :cond_8

    .line 1500
    const-string v13, "stop"

    invoke-virtual {v10, v3, v13}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->submit(ILjava/lang/String;)V

    goto :goto_4

    .line 1502
    :cond_6
    if-nez v11, :cond_7

    if-eqz v12, :cond_8

    .line 1503
    :cond_7
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v13, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v3, v13}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->submit(ILjava/lang/String;)V

    .line 1506
    :cond_8
    :goto_4
    invoke-virtual {v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->isCompleted()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1507
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v13}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    .end local v8    # "key":J
    .end local v11    # "hasStream":Z
    .end local v12    # "hasSignal":Z
    :cond_9
    goto :goto_1

    .line 1512
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v10    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    :cond_a
    goto/16 :goto_12

    .line 1466
    .end local v2    # "event":I
    .end local v5    # "streamId":I
    .end local v6    # "signal":I
    :pswitch_3
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;)V

    .line 1467
    goto/16 :goto_12

    .line 1462
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1463
    .local v2, "type":I
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->onVisibleView(I)V

    .line 1464
    goto/16 :goto_12

    .line 1455
    .end local v2    # "type":I
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1457
    .local v2, "signal":I
    const-string v3, "SmartAlarmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop sound, signal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->stop(I)V

    .line 1460
    goto/16 :goto_12

    .line 1429
    .end local v2    # "signal":I
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;

    .line 1430
    .local v2, "playSound":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;
    iget-object v5, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    .line 1431
    .local v5, "sound":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    iget v6, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->priority:I

    rsub-int/lit8 v6, v6, 0x7

    .line 1432
    .local v6, "priority":I
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1433
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v8, v8, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    move v3, v4

    :goto_5
    invoke-static {v7, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)I

    move-result v3

    goto :goto_6

    :cond_c
    iget v3, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->position:I

    .line 1434
    .local v3, "position":I
    :goto_6
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget-object v7, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    invoke-static {v4, v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1435
    iget-object v4, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

    iget v4, v4, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;->parameter:I

    int-to-float v4, v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    goto :goto_7

    :cond_d
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2700(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)F

    move-result v4

    .line 1436
    .local v4, "volume":F
    :goto_7
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v7

    iget-wide v8, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->ts:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1437
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v7

    iget-wide v8, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->ts:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    goto :goto_8

    :cond_e
    new-instance v7, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    iget-object v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget v9, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->signal:I

    iget-wide v10, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->ts:J

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;IJ)V

    :goto_8
    move-object v15, v7

    .line 1439
    .local v15, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;I)I

    move-result v3

    .line 1440
    iget-object v7, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->source:Ljava/lang/String;

    iget v8, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->priority:I

    iget v9, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->loop:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_f

    const-string v9, "periodic"

    goto :goto_9

    :cond_f
    const-string v9, "oneshot"

    :goto_9
    invoke-virtual {v15, v7, v8, v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->addSound(Ljava/lang/String;ILjava/lang/String;)V

    .line 1441
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v7

    iget-wide v8, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->ts:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    const-string v7, "SmartAlarmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "play sound, signal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->signal:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", priority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->priority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", loop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->loop:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", hasDownVolume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->hasDownVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    move-result-object v7

    iget v8, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->signal:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/media/audio/xiaopeng/xpilot/wav/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->source:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1450
    iget-boolean v10, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->rightSide:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3000()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1451
    move v10, v11

    goto :goto_a

    :cond_10
    move v10, v4

    :goto_a
    iget-boolean v12, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->leftSide:Z

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3000()Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_b

    :cond_11
    move v11, v4

    :goto_b
    iget v14, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->loop:I

    iget-boolean v13, v5, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->hasDownVolume:Z

    .line 1449
    move v12, v3

    move/from16 v16, v13

    move v13, v6

    move-object/from16 v17, v15

    move/from16 v15, v16

    .end local v15    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    .local v17, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    invoke-virtual/range {v7 .. v15}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->play(ILjava/lang/String;FFIIIZ)V

    .line 1453
    goto/16 :goto_12

    .line 1421
    .end local v2    # "playSound":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;
    .end local v3    # "position":I
    .end local v4    # "volume":F
    .end local v5    # "sound":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    .end local v6    # "priority":I
    .end local v17    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1422
    .local v2, "signalVal":I
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->getMapValue(I)Ljava/util/List;

    move-result-object v3

    .line 1423
    .local v3, "maps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1424
    .local v5, "val":I
    const-string v6, "SmartAlarmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mode_index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2100()Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    move-result-object v7

    const v8, 0x2140264b

    invoke-static {v6, v7, v8, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;II)V

    .line 1426
    .end local v5    # "val":I
    goto :goto_c

    .line 1427
    :cond_12
    goto/16 :goto_12

    .line 1546
    .end local v3    # "maps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v2, "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    .local v5, "priority":I
    .local v6, "ttsId":Ljava/lang/String;
    :cond_13
    iget v7, v1, Landroid/os/Message;->what:I

    if-eq v7, v9, :cond_14

    .line 1547
    return-void

    .line 1550
    :cond_14
    :goto_d
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getOnlyOnce()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1551
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$3900(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1554
    :cond_15
    if-nez v5, :cond_16

    .line 1555
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$4000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getShutUp()Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 1556
    :cond_16
    if-ne v5, v3, :cond_17

    .line 1557
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$4000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getShutUp()Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByUrgent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 1559
    :cond_17
    const-string v3, "SmartAlarmService"

    const-string v7, "Invalid tts priority!"

    invoke-static {v3, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :goto_e
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v9, :cond_18

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$4100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)J

    move-result-wide v7

    goto :goto_f

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1563
    .local v7, "ts":J
    :goto_f
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1564
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    goto :goto_10

    :cond_19
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I

    move-result v10

    invoke-direct {v3, v9, v10, v7, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;IJ)V

    .line 1566
    .local v3, "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    :goto_10
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getPriority()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->addTts(Ljava/lang/String;I)V

    .line 1568
    if-eqz v6, :cond_1a

    .line 1569
    invoke-static {v3, v6}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->access$3802(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;Ljava/lang/String;)Ljava/lang/String;

    .line 1570
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1572
    :cond_1a
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->addTtsStartTime()V

    .line 1573
    const-string v9, "failed"

    invoke-virtual {v3, v4, v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->submit(ILjava/lang/String;)V

    .line 1574
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1575
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$2800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    :cond_1b
    :goto_11
    const-string v4, "SmartAlarmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "speech: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", ttsId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", priority="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", hasShutUp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getShutUp()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1579
    invoke-static {v4, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->getLoop()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1584
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$8;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    iget v9, v1, Landroid/os/Message;->what:I

    invoke-static {v4, v9, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$4200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;ILcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)V

    .line 1588
    .end local v2    # "speech":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
    .end local v3    # "uploader":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    .end local v5    # "priority":I
    .end local v6    # "ttsId":Ljava/lang/String;
    .end local v7    # "ts":J
    :cond_1c
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
