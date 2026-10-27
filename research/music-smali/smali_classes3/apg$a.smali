.class Lapg$a;
.super Landroid/content/BroadcastReceiver;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lapg;


# direct methods
.method private constructor <init>(Lapg;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lapg$a;->a:Lapg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapg;Lapg$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lapg$a;-><init>(Lapg;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 41
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 43
    iget-object v2, p0, Lapg$a;->a:Lapg;

    invoke-static {v2}, Lapg;->a(Lapg;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laph;

    .line 44
    new-instance v2, Lapj;

    invoke-direct {v2}, Lapj;-><init>()V

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapj;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lapj;->b(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    invoke-virtual {v2, v1}, Lapj;->a(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0, p1, p2, v2}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;Lapj;)V

    :cond_1
    return-void
.end method
