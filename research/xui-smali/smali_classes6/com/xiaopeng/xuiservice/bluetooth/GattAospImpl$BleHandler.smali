.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;
.super Landroid/os/Handler;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1339
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 1340
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1341
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1345
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1427
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1428
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1429
    .local v3, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v3, :cond_0

    .line 1430
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2200(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothGatt;I)V

    .line 1434
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1435
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-nez v0, :cond_1

    .line 1436
    const-string v1, "GattAospImpl"

    const-string v2, "allowRepeatCommand,device not found"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    return-void

    .line 1439
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->allowRepeatCommand:Z

    .line 1440
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",allowRepeatCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->allowRepeatCommand:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    goto/16 :goto_3

    .line 1420
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1421
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1422
    .local v1, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v1, :cond_3

    .line 1423
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2100(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothGatt;I)V

    .line 1425
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_3
    goto/16 :goto_3

    .line 1417
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2000(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;I)V

    .line 1418
    goto/16 :goto_3

    .line 1414
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Z)V

    .line 1415
    goto/16 :goto_3

    .line 1411
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Z)V

    .line 1412
    goto/16 :goto_3

    .line 1350
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 1351
    .local v0, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1200(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V

    .line 1352
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    goto/16 :goto_3

    .line 1399
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1400
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1401
    .restart local v1    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    if-eqz v1, :cond_4

    .line 1402
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1403
    .local v3, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 1404
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 1405
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-boolean v5, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->autoConnect:Z

    invoke-static {v4, v0, v5}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1300(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;Z)Z

    .line 1406
    iput-boolean v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 1407
    const/16 v2, 0x12c

    iput v2, v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mManageState:I

    .line 1409
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :cond_4
    goto/16 :goto_3

    .line 1395
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 1396
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 1397
    .end local v0    # "gatt":Landroid/bluetooth/BluetoothGatt;
    goto/16 :goto_3

    .line 1386
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    .line 1387
    goto/16 :goto_3

    .line 1389
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1700(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;)V

    .line 1390
    goto/16 :goto_3

    .line 1392
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V

    .line 1393
    goto/16 :goto_3

    .line 1383
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V

    .line 1384
    goto/16 :goto_3

    .line 1380
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    .line 1381
    goto/16 :goto_3

    .line 1377
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-static {v0, v3, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1300(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;Z)Z

    .line 1378
    goto :goto_3

    .line 1354
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;

    .line 1355
    .local v0, "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    iput-boolean v2, v0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 1356
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$900(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x6f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1357
    const-string v1, "GattAospImpl"

    const-string v3, "##unlock op flag"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1360
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1361
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;

    .line 1362
    .local v2, "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1363
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->hasPendingData()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1364
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSliceDone()V

    .line 1365
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->hasPendingData()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1367
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1368
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$800(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1369
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1371
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1100(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
    goto :goto_2

    .line 1362
    .restart local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1375
    .end local v0    # "holder":Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
    :cond_7
    :goto_2
    goto :goto_3

    .line 1347
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$BleHandler;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$1100(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)V

    .line 1348
    nop

    .line 1445
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
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
