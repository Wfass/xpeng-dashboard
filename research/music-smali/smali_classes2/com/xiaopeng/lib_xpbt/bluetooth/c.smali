.class public Lcom/xiaopeng/lib_xpbt/bluetooth/c;
.super Lapg;
.source "XBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/b;
.implements Lcom/xiaopeng/lib_xpbt/bluetooth/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$e;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$c;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$g;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$a;,
        Lcom/xiaopeng/lib_xpbt/bluetooth/c$d;
    }
.end annotation


# instance fields
.field c:Landroid/bluetooth/BluetoothAdapter;

.field d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lapg;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    .line 34
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    invoke-static {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/PairReceiver;->a(Lcom/xiaopeng/lib_xpbt/bluetooth/g;)V

    .line 36
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$d;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 37
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$a;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$a;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 38
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$g;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$g;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 39
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$f;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 40
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$b;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 41
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$c;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$c;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 42
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$e;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 43
    new-instance p1, Lcom/xiaopeng/lib_xpbt/bluetooth/c$e;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/c$e;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/c;Lcom/xiaopeng/lib_xpbt/bluetooth/c$1;)V

    const-string p2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->a(Ljava/lang/String;Laph;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->g_()V

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/16 v0, 0x1f00

    if-eqz p0, :cond_1

    .line 377
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "bluetoothAdapter is null"

    .line 350
    invoke-static {v0}, Lapl;->a(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 356
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bondedAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lapl;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(Lapj;ZI)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/c;->d:Lcom/xiaopeng/lib_xpbt/bluetooth/a;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/a;->a(Lapj;ZI)V

    :cond_0
    return-void
.end method
