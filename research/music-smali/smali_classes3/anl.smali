.class public Lanl;
.super Lanp;
.source "AvrcpControl.java"


# instance fields
.field private e:Lann;

.field private f:Lcom/nforetek/bt/aidl/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lann;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lanp;-><init>()V

    .line 42
    new-instance v0, Lanl$1;

    invoke-direct {v0, p0}, Lanl$1;-><init>(Lanl;)V

    iput-object v0, p0, Lanl;->f:Lcom/nforetek/bt/aidl/b;

    .line 17
    iput-object p1, p0, Lanl;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lanl;->e:Lann;

    return-void
.end method

.method static synthetic a(Lanl;)Lann;
    .locals 0

    .line 11
    iget-object p0, p0, Lanl;->e:Lann;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    iget-object v1, p0, Lanl;->f:Lcom/nforetek/bt/aidl/b;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/l;->b(Lcom/nforetek/bt/aidl/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/nforetek/bt/aidl/l;)V
    .locals 1

    .line 24
    :try_start_0
    iput-object p1, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    .line 25
    iget-object v0, p0, Lanl;->f:Lcom/nforetek/bt/aidl/b;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/l;->a(Lcom/nforetek/bt/aidl/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AvrcpControl"

    .line 27
    invoke-virtual {p0, v0, p1}, Lanl;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(B)Z
    .locals 1

    .line 534
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 536
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/l;->b(B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(BJ)Z
    .locals 1

    .line 522
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/nforetek/bt/aidl/l;->a(BJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 526
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 258
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/l;->c(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->r()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->s()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->t()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 337
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->v()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->w()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->x()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 500
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->H()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lanl;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->I()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
