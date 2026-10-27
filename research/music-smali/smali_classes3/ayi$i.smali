.class Layi$i;
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
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method private constructor <init>(Layi;)V
    .locals 0

    .line 453
    iput-object p1, p0, Layi$i;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layi;Layi$1;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Layi$i;-><init>(Layi;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    const/16 v0, 0x6e

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x8c

    return p1

    :cond_1
    const/16 p1, 0x78

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 456
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Layi$i;->a(I)I

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 457
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Layi$i;->a(I)I

    move-result p1

    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfpAudioChanged prevState:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newState: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Bluetooth_Manager"

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v0, p1, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 465
    iget-object p3, p0, Layi$i;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 466
    iget-object p3, p0, Layi$i;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    invoke-interface {p3, p2, v0, p1}, Layk;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method
