.class Layi$a;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Layi$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method private constructor <init>(Layi;)V
    .locals 0

    .line 318
    iput-object p1, p0, Layi$a;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layi;Layi$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Layi$a;-><init>(Layi;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0x14a

    return p1

    :cond_0
    const/16 p1, 0x7d

    return p1

    :cond_1
    const/16 p1, 0x8c

    return p1

    :cond_2
    const/16 p1, 0x78

    return p1

    :cond_3
    const/16 p1, 0x64

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 321
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Layi$a;->a(I)I

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 322
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Layi$a;->a(I)I

    move-result p1

    .line 323
    iget-object p2, p0, Layi$a;->a:Layi;

    invoke-static {p2}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p2

    const-string v1, "Bluetooth_Manager"

    if-eqz p2, :cond_0

    .line 324
    iget-object p2, p0, Layi$a;->a:Layi;

    invoke-static {p2}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 325
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 326
    iget-object v2, p0, Layi$a;->a:Layi;

    invoke-static {v2}, Layi;->a(Layi;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 327
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a2dpConnected state, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,name:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,address:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Layi$a;->a:Layi;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, p2}, Layi;->c(Layi;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 333
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2dpStateChangedHandler prevState: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",newState:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",device:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",a2dp:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layi$a;->a:Layi;

    invoke-static {v2}, Layi;->e(Layi;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layi$a;->a:Layi;

    invoke-static {v2}, Layi;->f(Layi;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00:00:00:00:00:00"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 340
    :cond_1
    iget-object v3, p0, Layi$a;->a:Layi;

    invoke-static {v3}, Layi;->e(Layi;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Layi$a;->a:Layi;

    invoke-static {v3}, Layi;->e(Layi;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Layi$a;->a:Layi;

    invoke-static {v3}, Layi;->e(Layi;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p1, "A2dpState: return"

    .line 342
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_2
    iget-object p3, p0, Layi$a;->a:Layi;

    invoke-virtual {p3, v0}, Layi;->a(I)I

    move-result p3

    .line 348
    iget-object v1, p0, Layi$a;->a:Layi;

    invoke-static {v1, p3}, Layi;->a(Layi;I)I

    .line 349
    iget-object p3, p0, Layi$a;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 350
    iget-object p3, p0, Layi$a;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    invoke-interface {p3, p2, v2, p1, v0}, Layk;->b(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    return-void
.end method
