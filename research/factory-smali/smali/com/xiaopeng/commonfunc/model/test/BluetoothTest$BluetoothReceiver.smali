.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p2, "x1"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;

    .line 252
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 255
    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "action":Ljava/lang/String;
    const-string v3, "BluetoothTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothReceiver onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/16 v6, 0x10

    const/4 v7, 0x5

    const/16 v8, 0x13

    const/4 v10, 0x6

    const/16 v11, 0x12

    const/4 v12, 0x4

    const/16 v13, 0xc

    const/16 v15, 0xa

    const/4 v14, 0x1

    const/4 v9, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v12

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v15

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v14

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_c
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_d
    const-string v3, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_1

    :sswitch_e
    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_f
    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_1

    :sswitch_10
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_11
    const-string v3, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto :goto_1

    :sswitch_12
    const-string v3, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_13
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v9

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 336
    :pswitch_0
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v11}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 337
    goto/16 :goto_2

    .line 333
    :pswitch_1
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v13}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 334
    goto/16 :goto_2

    .line 330
    :pswitch_2
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v8}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 331
    goto/16 :goto_2

    .line 327
    :pswitch_3
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v7}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 328
    goto/16 :goto_2

    .line 324
    :pswitch_4
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v12}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 325
    goto/16 :goto_2

    .line 321
    :pswitch_5
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    const/16 v4, 0x15

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 322
    goto/16 :goto_2

    .line 318
    :pswitch_6
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v14}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 319
    goto/16 :goto_2

    .line 315
    :pswitch_7
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v10}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 316
    goto/16 :goto_2

    .line 312
    :pswitch_8
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v15}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 313
    goto/16 :goto_2

    .line 309
    :pswitch_9
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 310
    goto/16 :goto_2

    .line 306
    :pswitch_a
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 307
    goto/16 :goto_2

    .line 303
    :pswitch_b
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3, v1, v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 304
    goto/16 :goto_2

    .line 300
    :pswitch_c
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    const/16 v4, 0x11

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 301
    goto/16 :goto_2

    .line 297
    :pswitch_d
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    const/16 v4, 0x16

    invoke-static {v3, v1, v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V

    .line 298
    goto/16 :goto_2

    .line 291
    :pswitch_e
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 292
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 293
    .local v4, "variant":I
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 294
    .local v5, "passkey":I
    iget-object v6, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v6}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v6

    invoke-interface {v6, v3, v4, v5}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onPairRequest(Landroid/bluetooth/BluetoothDevice;II)V

    .line 295
    goto/16 :goto_2

    .line 286
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "variant":I
    .end local v5    # "passkey":I
    :pswitch_f
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 288
    .local v4, "state":I
    iget-object v5, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onBtPairStatus(ILandroid/bluetooth/BluetoothDevice;)V

    .line 289
    goto/16 :goto_2

    .line 281
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "state":I
    :pswitch_10
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 282
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 283
    .local v4, "rssi":I
    iget-object v5, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onScanCallback(Landroid/bluetooth/BluetoothDevice;I)V

    .line 284
    goto :goto_2

    .line 276
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "rssi":I
    :pswitch_11
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->isDiscovering()Z

    move-result v3

    if-nez v3, :cond_2

    .line 277
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onScanStatus(Z)V

    goto :goto_2

    .line 270
    :pswitch_12
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v3}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v3

    invoke-interface {v3, v14}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onScanStatus(Z)V

    goto :goto_2

    .line 261
    :pswitch_13
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 262
    .local v3, "state":I
    const-string v4, "BluetoothTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BluetoothReceiver ACTION_STATE_CHANGED state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-ne v3, v13, :cond_1

    .line 264
    iget-object v4, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v4

    invoke-interface {v4, v14}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onBtPower(Z)V

    goto :goto_2

    .line 265
    :cond_1
    if-ne v3, v15, :cond_2

    .line 266
    iget-object v4, v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onBtPower(Z)V

    .line 341
    .end local v3    # "state":I
    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_13
        -0x693fb1f3 -> :sswitch_12
        -0x63e84816 -> :sswitch_11
        -0x5b36f014 -> :sswitch_10
        -0x3ce0ba4b -> :sswitch_f
        -0x32445438 -> :sswitch_e
        -0x2486726f -> :sswitch_d
        -0xd553507 -> :sswitch_c
        -0x4fdeb4b -> :sswitch_b
        0x6724d8 -> :sswitch_a
        0x264968e -> :sswitch_9
        0x1ab8cab8 -> :sswitch_8
        0x2083ec2d -> :sswitch_7
        0x27181f3c -> :sswitch_6
        0x36eb6e04 -> :sswitch_5
        0x42f3be3f -> :sswitch_4
        0x459717c3 -> :sswitch_3
        0x4a286686 -> :sswitch_2
        0x5055e708 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
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
