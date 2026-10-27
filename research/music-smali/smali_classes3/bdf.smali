.class public abstract Lbdf;
.super Ljava/lang/Object;
.source "ReplayDownBase.java"


# instance fields
.field protected a:Z

.field private b:Lbdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "SP_CHANGE_SOURCE_COUNT"

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Lbdf;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lbdf;->b:Lbdf;

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lbdf;->a(Lbdf;)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lbdf;->a:Z

    return-void
.end method

.method public b(Z)Z
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "ReplayDownBase"

    const-string v2, "cancel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    iget-object v0, p0, Lbdf;->b:Lbdf;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lbdf;->b(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    iput-boolean p1, p0, Lbdf;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lbdf;->a:Z

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SP_CHANGE_SOURCE"

    .line 36
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected f()V
    .locals 2

    const-string v0, "SP_CHANGE_SOURCE"

    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected g()Lbdf;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lbdf;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdf;->b:Lbdf;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected h()V
    .locals 2

    const-string v0, "ReplayDownBase"

    const-string v1, "playLocal: ===== "

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v1, p0, Lbdf;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "playLocal: cancel"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lbdf;->i()V

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->d()V

    return-void
.end method
