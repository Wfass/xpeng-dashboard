.class Layi$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Layi;


# direct methods
.method private constructor <init>(Layi;)V
    .locals 0

    .line 484
    iput-object p1, p0, Layi$f;->a:Layi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layi;Layi$1;)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Layi$f;-><init>(Layi;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string p1, "Bluetooth_Manager"

    :try_start_0
    const-string v0, "android.bluetooth.headsetclient.extra.CALL"

    .line 489
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    .line 490
    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    iget-object p3, p0, Layi$f;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 497
    iget-object p3, p0, Layi$f;->a:Layi;

    invoke-static {p3}, Layi;->b(Layi;)Layk;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result p2

    invoke-interface {p3, v0, p2}, Layk;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 500
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
