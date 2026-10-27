.class public Layo;
.super Ljava/lang/Object;
.source "MusicAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layo$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/concurrent/atomic/AtomicLong;

.field protected b:Z

.field protected c:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Layo;->c:J

    return-void
.end method

.method public static a()Layo;
    .locals 1

    .line 56
    sget-object v0, Layo$a;->a:Layo;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 8

    .line 90
    invoke-virtual {p0}, Layo;->c()Lben;

    move-result-object v0

    invoke-interface {v0}, Lben;->g()Z

    move-result v0

    .line 91
    iget-boolean v1, p0, Layo;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 94
    :cond_0
    iput-boolean v0, p0, Layo;->b:Z

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 96
    iget-object v3, p0, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 97
    invoke-virtual {p0}, Layo;->b()Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchCollectedAlbum:kugouBinded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",deltaTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",fetchType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MusicAlbumModel"

    invoke-static {v7, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eq p1, v6, :cond_2

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const-wide/16 v6, 0x2710

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x1388

    :goto_0
    if-eqz v0, :cond_4

    cmp-long p1, v3, v6

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    const-wide v3, 0x757b12c00L

    sub-long v3, v1, v3

    .line 113
    iput-wide v3, p0, Layo;->c:J

    .line 114
    iget-object p1, p0, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 115
    invoke-virtual {p0}, Layo;->d()I

    move-result p1

    new-instance v0, Layo$1;

    invoke-direct {v0, p0, v5, p2}, Layo$1;-><init>(Layo;Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Layx;->a(ILbkv;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Layo;->c()Lben;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lben;
    .locals 1

    .line 69
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()Lazy;
    .locals 1

    .line 77
    invoke-static {}, Lazx;->a()Lazx;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lbab;
    .locals 1

    .line 81
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, v0}, Layo;->a(IZ)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 185
    iget-object v0, p0, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
