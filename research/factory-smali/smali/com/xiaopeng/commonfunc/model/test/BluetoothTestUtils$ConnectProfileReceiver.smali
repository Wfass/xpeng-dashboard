.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;
.super Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectProfileReceiver"
.end annotation


# static fields
.field private static final STATE_CONNECTED_FLAG:I = 0x4

.field private static final STATE_CONNECTING_FLAG:I = 0x2

.field private static final STATE_DISCONNECTED_FLAG:I = 0x1

.field private static final STATE_DISCONNECTING_FLAG:I = 0x8


# instance fields
.field private mConnectionAction:Ljava/lang/String;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mProfile:I

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "profile"    # I
    .param p4, "expectedFlags"    # I

    .line 248
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 249
    invoke-direct {p0, p1, p4}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 251
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 252
    iput p3, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mProfile:I

    .line 254
    iget p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mProfile:I

    packed-switch p1, :pswitch_data_0

    .line 268
    :pswitch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    goto :goto_0

    .line 265
    :pswitch_1
    const-string p1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    .line 266
    goto :goto_0

    .line 262
    :pswitch_2
    const-string p1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    .line 263
    goto :goto_0

    .line 256
    :pswitch_3
    const-string p1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    .line 257
    goto :goto_0

    .line 259
    :pswitch_4
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    .line 260
    nop

    .line 270
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mConnectionAction:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "state":I
    if-eq v0, v1, :cond_1

    .line 284
    packed-switch v0, :pswitch_data_0

    .end local v0    # "state":I
    goto :goto_0

    .line 295
    .restart local v0    # "state":I
    :pswitch_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->setFiredFlag(I)V

    .end local v0    # "state":I
    goto :goto_0

    .line 292
    .restart local v0    # "state":I
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->setFiredFlag(I)V

    .line 293
    goto :goto_0

    .line 289
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->setFiredFlag(I)V

    .line 290
    goto :goto_0

    .line 286
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$ConnectProfileReceiver;->setFiredFlag(I)V

    .line 287
    goto :goto_0

    .line 282
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0    # "state":I
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
