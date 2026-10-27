.class public Lant;
.super Lanp;
.source "BluetoothControl.java"


# instance fields
.field private e:Lano;

.field private f:Lcom/nforetek/bt/aidl/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lano;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lanp;-><init>()V

    .line 47
    new-instance v0, Lant$1;

    invoke-direct {v0, p0}, Lant$1;-><init>(Lant;)V

    iput-object v0, p0, Lant;->f:Lcom/nforetek/bt/aidl/c;

    .line 19
    iput-object p1, p0, Lant;->b:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lant;->e:Lano;

    return-void
.end method

.method static synthetic a(Lant;)Lano;
    .locals 0

    .line 12
    iget-object p0, p0, Lant;->e:Lano;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    :try_start_0
    const-string v0, "BluetoothControl"

    const-string v1, "release"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    iget-object v1, p0, Lant;->f:Lcom/nforetek/bt/aidl/c;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/l;->b(Lcom/nforetek/bt/aidl/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/nforetek/bt/aidl/l;)V
    .locals 3

    const-string v0, "BluetoothControl"

    .line 26
    :try_start_0
    iput-object p1, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, p0, Lant;->f:Lcom/nforetek/bt/aidl/c;

    invoke-interface {p1, v1}, Lcom/nforetek/bt/aidl/l;->a(Lcom/nforetek/bt/aidl/c;)Z

    const-string p1, "bluetooth nf btService registerCallback "

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lant;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const-string v0, "BluetoothControl"

    const-string v1, "getBtRemoteDeviceName"

    .line 357
    invoke-virtual {p0, v0, v1}, Lant;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lant;->c()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    iget-object v3, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v3, v1}, Lcom/nforetek/bt/aidl/l;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 366
    invoke-virtual {p0, v0, v1}, Lant;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothControl"

    .line 481
    invoke-super {p0, v0}, Lanp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothControl"

    const-string v1, "getA2dpConnectedAddress"

    .line 485
    invoke-virtual {p0, v0, v1}, Lant;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    .line 488
    :cond_0
    :try_start_0
    iget-object v1, p0, Lant;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/l;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 491
    invoke-virtual {p0, v0, v1}, Lant;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2
.end method
