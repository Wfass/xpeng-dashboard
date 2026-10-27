.class public Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PairReceiver.java"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/bluetooth/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaopeng/lib_xpbt/bluetooth/g;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 27
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapj;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapj;->b(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    invoke-virtual {v0, p1}, Lapj;->a(I)V

    .line 31
    sget-object p1, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib_xpbt/bluetooth/g;

    const/4 v2, 0x0

    .line 32
    invoke-interface {v1, v0, p2, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/g;->a(Lapj;ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method
