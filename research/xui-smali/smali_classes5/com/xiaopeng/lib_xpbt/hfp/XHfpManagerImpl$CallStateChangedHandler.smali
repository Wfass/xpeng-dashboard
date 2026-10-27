.class Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;
.super Ljava/lang/Object;
.source "XHfpManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateChangedHandler"
.end annotation


# static fields
.field private static final initIdValue:I = -0x2710


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;

    .line 415
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;-><init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)V

    return-void
.end method

.method private handleCallBack(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 11
    .param p1, "bluetoothHeadsetClientCall"    # Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 428
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    .line 429
    .local v0, "state":I
    const/16 v1, -0x2710

    move v2, v1

    .line 431
    .local v2, "id":I
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .local v3, "long_id":J
    long-to-int v2, v3

    .line 435
    .end local v3    # "long_id":J
    goto :goto_0

    .line 433
    :catch_0
    move-exception v3

    .line 434
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 436
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    if-ne v2, v1, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    .line 439
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 526
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 529
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    .line 532
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 533
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 534
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 528
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 514
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 517
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    .line 520
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 521
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 522
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 516
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 502
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 505
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 508
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 510
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 504
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 441
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 444
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 449
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 443
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 466
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 469
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    .line 472
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 473
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 474
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 468
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 454
    :pswitch_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 457
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 460
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 462
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 456
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto/16 :goto_1

    .line 490
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 493
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 496
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 498
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 492
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    goto :goto_1

    .line 478
    :pswitch_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$500(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iget-object v3, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 481
    invoke-virtual {v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 484
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 485
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v8

    .line 486
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isOutgoing()Z

    move-result v9

    const/4 v10, 0x0

    .line 480
    move v5, v2

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    .line 538
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 420
    const-string v0, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 421
    .local v0, "state":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 422
    .local v1, "bluetoothHeadsetClientCall":Landroid/bluetooth/BluetoothHeadsetClientCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bluetoothHeadsetClientCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isInBandRing()Z

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$602(Z)Z

    .line 424
    invoke-direct {p0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$CallStateChangedHandler;->handleCallBack(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 425
    return-void
.end method
