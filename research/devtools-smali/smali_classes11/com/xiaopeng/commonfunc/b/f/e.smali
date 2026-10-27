.class public Lcom/xiaopeng/commonfunc/b/f/e;
.super Ljava/lang/Object;
.source "SecurityModel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private nY:Lcom/xiaopeng/commonfunc/a/c;

.field private oA:Lcom/xiaopeng/commonfunc/b/f/a;

.field private oB:Lcom/xiaopeng/commonfunc/b/f/f;

.field private oC:Lcom/xiaopeng/commonfunc/b/f/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/c;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/e;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/e;->nY:Lcom/xiaopeng/commonfunc/a/c;

    .line 29
    new-instance p2, Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-direct {p2, p1}, Lcom/xiaopeng/commonfunc/b/f/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    .line 30
    new-instance p2, Lcom/xiaopeng/commonfunc/b/f/f;

    invoke-direct {p2, p1}, Lcom/xiaopeng/commonfunc/b/f/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oB:Lcom/xiaopeng/commonfunc/b/f/f;

    .line 31
    new-instance p2, Lcom/xiaopeng/commonfunc/b/f/d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/commonfunc/b/f/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oC:Lcom/xiaopeng/commonfunc/b/f/d;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/f/e;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/b/f/e;->m(II)V

    return-void
.end method

.method private synthetic ej()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->ea()Z

    move-result v0

    .line 103
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x2

    .line 103
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/b/f/e;->m(II)V

    .line 105
    return-void
.end method

.method private synthetic ek()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->dZ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    move v0, v1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 95
    :cond_1
    const/4 v0, 0x2

    .line 94
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/b/f/e;->m(II)V

    .line 96
    return-void
.end method

.method private synthetic el()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oC:Lcom/xiaopeng/commonfunc/b/f/d;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/d;->ed()Z

    move-result v0

    .line 50
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    nop

    .line 50
    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/commonfunc/b/f/e;->m(II)V

    .line 52
    return-void
.end method

.method public static synthetic lambda$BaRMeSAyFPsH0F9WYg15f8BEU5w(Lcom/xiaopeng/commonfunc/b/f/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/f/e;->el()V

    return-void
.end method

.method public static synthetic lambda$Y3Pxxy00C62HoVAYyyvRGgWyaMo(Lcom/xiaopeng/commonfunc/b/f/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/f/e;->ek()V

    return-void
.end method

.method public static synthetic lambda$n6uBumKVUqH-JVaGCHHPGRR5jiA(Lcom/xiaopeng/commonfunc/b/f/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/b/f/e;->ej()V

    return-void
.end method

.method private m(II)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->nY:Lcom/xiaopeng/commonfunc/a/c;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->nY:Lcom/xiaopeng/commonfunc/a/c;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/commonfunc/a/c;->onReceiveResult(II)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public dX()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->dX()Z

    move-result v0

    return v0
.end method

.method public dY()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->dY()Z

    move-result v0

    return v0
.end method

.method public ee()V
    .locals 2

    .line 47
    const-string v0, "TestSecurityPresenter"

    const-string v1, "verifyPsuKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$BaRMeSAyFPsH0F9WYg15f8BEU5w;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$BaRMeSAyFPsH0F9WYg15f8BEU5w;-><init>(Lcom/xiaopeng/commonfunc/b/f/e;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public ef()Z
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oB:Lcom/xiaopeng/commonfunc/b/f/f;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/f;->em()Z

    move-result v0

    .line 57
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifiKeyExist res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    return v0
.end method

.method public eg()V
    .locals 8

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/f/e;->ef()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/commonfunc/b/f/e;->m(II)V

    .line 64
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jCmX14gy4XLe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/o;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    const-string v0, "TestSecurityPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyWifiKey password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/b;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/b/f/e;->mContext:Landroid/content/Context;

    const-string v4, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    const-string v5, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    const-string v1, "CHECK_WIFI_KEY"

    .line 70
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/commonfunc/b/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaopeng/commonfunc/b/f/e$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/b/f/e$1;-><init>(Lcom/xiaopeng/commonfunc/b/f/e;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/b/f/b;->a(Lcom/xiaopeng/lib/http/c;)V

    .line 89
    return-void
.end method

.method public eh()V
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$Y3Pxxy00C62HoVAYyyvRGgWyaMo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$Y3Pxxy00C62HoVAYyyvRGgWyaMo;-><init>(Lcom/xiaopeng/commonfunc/b/f/e;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public ei()V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$n6uBumKVUqH-JVaGCHHPGRR5jiA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/f/-$$Lambda$e$n6uBumKVUqH-JVaGCHHPGRR5jiA;-><init>(Lcom/xiaopeng/commonfunc/b/f/e;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oA:Lcom/xiaopeng/commonfunc/b/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/a;->onDestroy()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oB:Lcom/xiaopeng/commonfunc/b/f/f;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/f;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/e;->oC:Lcom/xiaopeng/commonfunc/b/f/d;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/d;->onDestroy()V

    .line 38
    return-void
.end method
