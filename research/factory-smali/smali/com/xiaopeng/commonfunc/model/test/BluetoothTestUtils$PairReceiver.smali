.class Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;
.super Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairReceiver"
.end annotation


# static fields
.field private static final STATE_BONDED_FLAG:I = 0x1

.field private static final STATE_BONDING_FLAG:I = 0x2

.field private static final STATE_NONE_FLAG:I = 0x4


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPasskey:I

.field private mPin:[B

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;Landroid/bluetooth/BluetoothDevice;I[BI)V
    .locals 0
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "passkey"    # I
    .param p4, "pin"    # [B
    .param p5, "expectedFlags"    # I

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    .line 182
    invoke-direct {p0, p1, p5}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V

    .line 184
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 185
    iput p3, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mPasskey:I

    .line 186
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mPin:[B

    .line 187
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, "varient":I
    if-eq v0, v2, :cond_1

    .line 201
    packed-switch v0, :pswitch_data_0

    .end local v0    # "varient":I
    :pswitch_0
    goto :goto_0

    .line 214
    .restart local v0    # "varient":I
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    .end local v0    # "varient":I
    goto :goto_0

    .line 211
    .restart local v0    # "varient":I
    :pswitch_2
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 212
    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mPasskey:I

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    .line 208
    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->mPin:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 205
    nop

    .line 217
    .end local v0    # "varient":I
    :goto_0
    goto :goto_1

    .line 199
    .restart local v0    # "varient":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "varient= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v0    # "varient":I
    :cond_2
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "state":I
    if-eq v0, v2, :cond_3

    .line 223
    packed-switch v0, :pswitch_data_1

    .end local v0    # "state":I
    goto :goto_1

    .line 231
    .restart local v0    # "state":I
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->setFiredFlag(I)V

    .end local v0    # "state":I
    goto :goto_1

    .line 228
    .restart local v0    # "state":I
    :pswitch_6
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->setFiredFlag(I)V

    .line 229
    goto :goto_1

    .line 225
    :pswitch_7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$PairReceiver;->setFiredFlag(I)V

    .line 226
    goto :goto_1

    .line 221
    :cond_3
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

    .line 235
    .end local v0    # "state":I
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
