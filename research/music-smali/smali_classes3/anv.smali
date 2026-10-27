.class public Lanv;
.super Lanp;
.source "UsbBluetoothControl.java"


# instance fields
.field private e:Lanr;

.field private f:Lcom/nforetek/bt/aidl/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanr;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lanp;-><init>()V

    .line 50
    new-instance v0, Lanv$1;

    invoke-direct {v0, p0}, Lanv$1;-><init>(Lanv;)V

    iput-object v0, p0, Lanv;->f:Lcom/nforetek/bt/aidl/k;

    .line 22
    iput-object p1, p0, Lanv;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lanv;->e:Lanr;

    return-void
.end method

.method static synthetic a(Lanv;)Lanr;
    .locals 0

    .line 15
    iget-object p0, p0, Lanv;->e:Lanr;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    :try_start_0
    const-string v0, "UsbBluetoothControl"

    const-string v1, "release"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    iget-object v1, p0, Lanv;->f:Lcom/nforetek/bt/aidl/k;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/l;->b(Lcom/nforetek/bt/aidl/k;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/nforetek/bt/aidl/l;)V
    .locals 3

    const-string v0, "UsbBluetoothControl"

    .line 29
    :try_start_0
    iput-object p1, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lanv;->f:Lcom/nforetek/bt/aidl/k;

    invoke-interface {p1, v1}, Lcom/nforetek/bt/aidl/l;->a(Lcom/nforetek/bt/aidl/k;)Z

    move-result p1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth nf btService registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, "UsbBluetoothControl"

    const-string v1, "getUsbConnectedDevice"

    .line 388
    invoke-virtual {p0, v0, v1}, Lanv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v1, "nForeService == null"

    .line 390
    invoke-virtual {p0, v0, v1}, Lanv;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 394
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanv;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/l;->aZ()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 396
    invoke-virtual {p0, v0, v1}, Lanv;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2
.end method
