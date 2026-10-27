.class public Lcom/xiaopeng/libbluetooth/f;
.super Lcom/xiaopeng/libbluetooth/a;
.source "GeneralControlBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libbluetooth/f$a;
    }
.end annotation


# instance fields
.field private XA:Lcom/xiaopeng/b/b/a;

.field private XB:Lcom/xiaopeng/libbluetooth/b;

.field private XC:Lcom/xiaopeng/libbluetooth/f$a;

.field private XD:Lcom/xiaopeng/b/b/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/b;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/a;-><init>()V

    .line 63
    new-instance v0, Lcom/xiaopeng/libbluetooth/f$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/f$1;-><init>(Lcom/xiaopeng/libbluetooth/f;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XD:Lcom/xiaopeng/b/b/b;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/libbluetooth/f;->XB:Lcom/xiaopeng/libbluetooth/b;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/f;Lcom/xiaopeng/libbluetooth/f$a;)Lcom/xiaopeng/libbluetooth/f$a;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->XC:Lcom/xiaopeng/libbluetooth/f$a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/f;Ljava/lang/Exception;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/b;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/f;->XB:Lcom/xiaopeng/libbluetooth/b;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/libbluetooth/f;)Lcom/xiaopeng/libbluetooth/f$a;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/f;->XC:Lcom/xiaopeng/libbluetooth/f$a;

    return-object p0
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 3

    .line 891
    const-string v0, "GeneralControlBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/b/a;)V
    .locals 1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/b/a;->qi()Lcom/xiaopeng/b/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XD:Lcom/xiaopeng/b/b/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/b/b/a;->a(Lcom/xiaopeng/b/b/b;)V

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->XB:Lcom/xiaopeng/libbluetooth/b;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/f;->XB:Lcom/xiaopeng/libbluetooth/b;

    invoke-virtual {p1}, Lcom/xiaopeng/libbluetooth/b;->onBindSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 40
    :goto_0
    return-void
.end method

.method public a(I[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 619
    nop

    .line 621
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/b/b/a;->a(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    move v0, p1

    :cond_0
    goto :goto_0

    .line 625
    :catch_0
    move-exception p1

    .line 626
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 628
    :goto_0
    return v0
.end method

.method public a([I[Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 8

    .line 554
    nop

    .line 556
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    if-eqz v1, :cond_0

    .line 557
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->getID()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/b/b/a;->a(Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    move v0, p1

    :cond_0
    goto :goto_0

    .line 559
    :catch_0
    move-exception p1

    .line 560
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 562
    :goto_0
    return v0
.end method

.method public dM()I
    .locals 3

    .line 195
    nop

    .line 197
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/b/b/a;->eA(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    move v0, v1

    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 203
    :goto_0
    return v0
.end method

.method public dQ(Ljava/lang/String;)Z
    .locals 3

    .line 761
    nop

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 764
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/xiaopeng/b/b/a;->an(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception p1

    .line 766
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 768
    move p1, v1

    :goto_0
    return p1
.end method

.method protected pp()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    .line 45
    return-void
.end method

.method protected pq()V
    .locals 0

    .line 50
    return-void
.end method

.method public py()Z
    .locals 3

    .line 414
    nop

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 417
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/b/b/a;->eI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v1, 0x1

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 422
    :goto_0
    return v1
.end method

.method protected release()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/f;->XA:Lcom/xiaopeng/b/b/a;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/f;->XD:Lcom/xiaopeng/b/b/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/b/b/a;->b(Lcom/xiaopeng/b/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/f;->c(Ljava/lang/Exception;)V

    .line 61
    :cond_0
    :goto_0
    return-void
.end method
