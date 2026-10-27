.class public Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 261
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 266
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    if-eqz v1, :cond_0

    .line 268
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_0
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent no device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    :goto_0
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 277
    .local v2, "bondState":I
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v3, v1, v2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$200(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/bluetooth/BluetoothDevice;I)V

    .line 279
    .end local v2    # "bondState":I
    goto/16 :goto_3

    :cond_2
    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 280
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 281
    .local v2, "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, "currState":I
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v4, v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    .line 285
    .end local v3    # "currState":I
    goto/16 :goto_3

    .end local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :cond_3
    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 287
    .restart local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 289
    .restart local v3    # "currState":I
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v4, v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    .line 291
    .end local v3    # "currState":I
    goto/16 :goto_3

    .end local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :cond_4
    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 292
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 293
    .restart local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 295
    .restart local v3    # "currState":I
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v4, v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    .line 297
    .end local v3    # "currState":I
    goto/16 :goto_3

    .end local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :cond_5
    const-string v2, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 298
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 299
    .restart local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 301
    .restart local v3    # "currState":I
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v4, v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    .line 303
    .end local v3    # "currState":I
    goto/16 :goto_3

    .end local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :cond_6
    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 305
    .restart local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 307
    .restart local v3    # "currState":I
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v4, v2, v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    .line 309
    .end local v3    # "currState":I
    goto/16 :goto_3

    .end local v2    # "connectParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :cond_7
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 310
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 311
    .local v2, "currState":I
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 312
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Adapter State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_8
    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 317
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->readAndRebuildDeviceMapFromSettings()Z

    .line 318
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    goto :goto_1

    .line 319
    :cond_9
    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 321
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$500(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Z

    .line 322
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$600(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 324
    .end local v2    # "currState":I
    :cond_a
    :goto_1
    goto :goto_3

    :cond_b
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 327
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 328
    const-string v2, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received UUID intent for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_c
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 331
    .local v2, "uuids":[Landroid/os/Parcelable;
    if-eqz v2, :cond_e

    .line 332
    array-length v4, v2

    new-array v4, v4, [Landroid/os/ParcelUuid;

    .line 333
    .local v4, "uuidsToSend":[Landroid/os/ParcelUuid;
    nop

    .local v3, "i":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_d

    .line 334
    aget-object v5, v2, v3

    check-cast v5, Landroid/os/ParcelUuid;

    aput-object v5, v4, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    .end local v3    # "i":I
    :cond_d
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    const/16 v5, 0x64

    invoke-static {v3, v1, v4, v5}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$700(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;I)V

    .line 340
    .end local v2    # "uuids":[Landroid/os/Parcelable;
    .end local v4    # "uuidsToSend":[Landroid/os/ParcelUuid;
    :cond_e
    :goto_3
    return-void
.end method
