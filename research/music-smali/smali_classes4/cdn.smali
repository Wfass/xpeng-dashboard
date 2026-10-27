.class public Lcdn;
.super Ljava/lang/Object;
.source "SevenZArchiveEntry.java"

# interfaces
.implements Lcdd;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:I

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lcdq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/Date;)J
    .locals 8

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const-string v0, "GMT+0"

    .line 508
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 509
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 511
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(J)Ljava/util/Date;
    .locals 8

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const-string v0, "GMT+0"

    .line 494
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0x641

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 495
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 496
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 497
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    .line 498
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcdn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 364
    iput-wide p1, p0, Lcdn;->n:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcdn;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    iput-boolean v0, p0, Lcdn;->f:Z

    .line 224
    iget-boolean v0, p0, Lcdn;->f:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-static {p1}, Lcdn;->b(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lcdn;->i:J

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcdn;->b:Z

    return-void
.end method

.method b(J)V
    .locals 0

    .line 402
    iput-wide p1, p0, Lcdn;->o:J

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcdn;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcdn;->b:Z

    return v0
.end method

.method public c(J)V
    .locals 0

    .line 421
    iput-wide p1, p0, Lcdn;->p:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcdn;->m:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcdn;->c:Z

    return v0
.end method

.method d(J)V
    .locals 0

    .line 439
    iput-wide p1, p0, Lcdn;->q:J

    return-void
.end method

.method public d()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcdn;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcdn;->e:Z

    return v0
.end method

.method public f()Ljava/util/Date;
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcdn;->e:Z

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p0, Lcdn;->h:J

    invoke-static {v0, v1}, Lcdn;->e(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcdn;->f:Z

    return v0
.end method

.method public h()Ljava/util/Date;
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcdn;->f:Z

    if-eqz v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcdn;->i:J

    invoke-static {v0, v1}, Lcdn;->e(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcdn;->g:Z

    return v0
.end method

.method public j()Ljava/util/Date;
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcdn;->g:Z

    if-eqz v0, :cond_0

    .line 253
    iget-wide v0, p0, Lcdn;->j:J

    invoke-static {v0, v1}, Lcdn;->e(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcdn;->k:Z

    return v0
.end method

.method public l()I
    .locals 1

    .line 300
    iget v0, p0, Lcdn;->l:I

    return v0
.end method

.method public m()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lcdn;->n:J

    return-wide v0
.end method

.method n()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcdn;->o:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 412
    iget-wide v0, p0, Lcdn;->p:J

    return-wide v0
.end method

.method p()J
    .locals 2

    .line 430
    iget-wide v0, p0, Lcdn;->q:J

    return-wide v0
.end method

.method public q()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcdq;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcdn;->r:Ljava/lang/Iterable;

    return-object v0
.end method
