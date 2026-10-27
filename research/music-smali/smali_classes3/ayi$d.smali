.class Layi$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method private constructor <init>(Layi;)V
    .locals 0

    .line 370
    iput-object p1, p0, Layi$d;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layi;Layi$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Layi$d;-><init>(Layi;)V

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
    .locals 3

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 373
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Layi$d;->a(I)I

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 374
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Layi$d;->a(I)I

    move-result p1

    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvrcpStateChangedHandler prevState: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",device:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 377
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    const-string v2, "00:00:00:00:00:00"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object p3, p0, Layi$d;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 382
    iget-object p3, p0, Layi$d;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    invoke-interface {p3, p2, v1, p1, v0}, Layk;->c(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method
