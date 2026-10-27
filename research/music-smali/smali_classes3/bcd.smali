.class public Lbcd;
.super Layo;
.source "KugouAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcd$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Layo;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static synthetic a(Lbcd;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lbcd;->c:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 123
    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v0

    new-instance v1, Lbcd$1;

    invoke-direct {v1, p0, p1, p2}, Lbcd$1;-><init>(Lbcd;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lbce;->a(ILbce$b;)V

    return-void
.end method

.method static synthetic b(Lbcd;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lbcd;->c:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 13

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v6, Lbbo;

    invoke-direct {v6}, Lbbo;-><init>()V

    .line 212
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v2

    .line 213
    new-instance v12, Lbcd$2;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lbcd$2;-><init>(Lbcd;ILjava/lang/String;Ljava/util/List;Z)V

    const/4 p1, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x1e

    const/16 v9, 0x64

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object v5, v6

    move-object v6, p1

    invoke-virtual/range {v5 .. v12}, Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V

    return-void
.end method

.method static synthetic c(Lbcd;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lbcd;->c:J

    return-wide v0
.end method

.method static synthetic d(Lbcd;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lbcd;->c:J

    return-wide v0
.end method

.method public static i()Lbcd;
    .locals 1

    .line 51
    sget-object v0, Lbcd$a;->a:Lbcd;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 71
    invoke-virtual/range {p0 .. p0}, Lbcd;->c()Lben;

    move-result-object v3

    invoke-interface {v3}, Lben;->g()Z

    move-result v3

    .line 72
    iget-boolean v4, v0, Lbcd;->b:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 73
    iget-object v4, v0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 74
    iget-object v4, v0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 76
    :cond_0
    iput-boolean v3, v0, Lbcd;->b:Z

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    iget-object v6, v0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 79
    iget-object v8, v0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 80
    invoke-virtual/range {p0 .. p0}, Lbcd;->b()Ljava/lang/String;

    move-result-object v10

    .line 81
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fetchCollectedAlbum:kugouBinded="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ",collectDeltaTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",customDeltaTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",fetchType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "KugouAlbumModel"

    invoke-static {v12, v11}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v12, :cond_2

    if-eq v1, v11, :cond_1

    const-wide/16 v13, 0x2710

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v13, 0x1388

    :goto_0
    if-nez v3, :cond_3

    return-void

    :cond_3
    const-wide v15, 0x757b12c00L

    move-wide/from16 v17, v13

    sub-long v12, v4, v15

    .line 96
    iput-wide v12, v0, Lbcd;->c:J

    if-ne v1, v11, :cond_4

    .line 100
    iget-object v1, v0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v1, v8, v17

    if-ltz v1, :cond_7

    .line 102
    invoke-direct {v0, v10, v2}, Lbcd;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 105
    iget-object v1, v0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v1, v6, v17

    if-ltz v1, :cond_7

    .line 107
    invoke-direct {v0, v10, v2}, Lbcd;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    if-nez v1, :cond_7

    .line 111
    iget-object v1, v0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 112
    iget-object v1, v0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v1, v8, v17

    if-ltz v1, :cond_6

    .line 114
    invoke-direct {v0, v10, v2}, Lbcd;->b(Ljava/lang/String;Z)V

    :cond_6
    cmp-long v1, v6, v17

    if-ltz v1, :cond_7

    .line 117
    invoke-direct {v0, v10, v2}, Lbcd;->a(Ljava/lang/String;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected c()Lben;
    .locals 1

    .line 55
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected e()Lazy;
    .locals 1

    .line 63
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lbab;
    .locals 1

    .line 67
    invoke-static {}, Lbat;->a()Lbat;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 284
    iget-object v0, p0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 285
    iget-object v0, p0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
