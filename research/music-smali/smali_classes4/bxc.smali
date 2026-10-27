.class public Lbxc;
.super Lbvs$a;
.source "TTSEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbww;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private c:Lcom/xiaopeng/speech/common/util/f;

.field private d:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvs;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbvr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lbvs$a;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbxc;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lbxc;->b:Z

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "TTSEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    .line 30
    new-instance v0, Lbxc$1;

    invoke-direct {v0, p0}, Lbxc$1;-><init>(Lbxc;)V

    iput-object v0, p0, Lbxc;->e:Lbvr;

    return-void
.end method

.method static synthetic a(Lbxc;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lbxc;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lbxc;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lbxc;->b:Z

    return p1
.end method

.method static synthetic b(Lbxc;)Lcom/xiaopeng/speech/common/util/f;
    .locals 0

    .line 23
    iget-object p0, p0, Lbxc;->c:Lcom/xiaopeng/speech/common/util/f;

    return-object p0
.end method

.method static synthetic c(Lbxc;)Lbvr;
    .locals 0

    .line 23
    iget-object p0, p0, Lbxc;->e:Lbvr;

    return-object p0
.end method

.method private declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lbxc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 473
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$17;

    invoke-direct {v1, p0}, Lbxc$17;-><init>(Lbxc;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IIILbww;)Ljava/lang/String;
    .locals 10

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget v7, Lbvf;->a:I

    .line 131
    sget v1, Lbvf;->d:I

    int-to-long v8, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Lbxc;->a(Ljava/lang/String;ILjava/lang/String;IIIJ)Z

    .line 133
    invoke-direct {p0}, Lbxc;->g()V

    if-eqz p5, :cond_0

    .line 135
    iget-object p1, p0, Lbxc;->a:Ljava/util/Map;

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "speak callback size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lbxc;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lbxc;->b:Z

    .line 506
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 211
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$22;

    invoke-direct {v1, p0, p1}, Lbxc$22;-><init>(Lbxc;F)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$24;

    invoke-direct {v1, p0, p1}, Lbxc$24;-><init>(Lbxc;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 363
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$9;

    invoke-direct {v1, p0, p1, p2}, Lbxc$9;-><init>(Lbxc;IZ)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 494
    :try_start_0
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->c()Lbvs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 496
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    :goto_0
    iget-object p1, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V

    return-void
.end method

.method public a(Lbvr;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$11;

    invoke-direct {v1, p0, p1}, Lbxc$11;-><init>(Lbxc;Lbvr;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lbxc;->c:Lcom/xiaopeng/speech/common/util/f;

    .line 92
    iget-object p1, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    iget-object v0, p0, Lbxc;->c:Lcom/xiaopeng/speech/common/util/f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$20;

    invoke-direct {v1, p0, p1}, Lbxc$20;-><init>(Lbxc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$5;

    invoke-direct {v1, p0, p1, p2}, Lbxc$5;-><init>(Lbxc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 286
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$4;

    invoke-direct {v1, p0, p1}, Lbxc$4;-><init>(Lbxc;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLandroid/os/IBinder;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$14;

    invoke-direct {v1, p0, p2, p1}, Lbxc$14;-><init>(Lbxc;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 8

    .line 166
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxc$19;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxc$19;-><init>(Lbxc;Ljava/lang/String;ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 166
    invoke-virtual {v0, v7, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;IIIJ)Z
    .locals 13

    move-object v10, p0

    .line 150
    iget-object v11, v10, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v12, Lbxc$18;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lbxc$18;-><init>(Lbxc;Ljava/lang/String;ILjava/lang/String;IIIJ)V

    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    invoke-virtual {v11, v12, v0}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;IIIJI)Z
    .locals 14

    move-object v11, p0

    .line 316
    iget-object v12, v11, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v13, Lbxc$6;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lbxc$6;-><init>(Lbxc;Ljava/lang/String;ILjava/lang/String;IIIJI)V

    const/4 v0, 0x0

    .line 327
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 316
    invoke-virtual {v12, v13, v0}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$21;

    invoke-direct {v1, p0}, Lbxc$21;-><init>(Lbxc;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$3;

    invoke-direct {v1, p0, p1}, Lbxc$3;-><init>(Lbxc;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lbvr;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$13;

    invoke-direct {v1, p0, p1}, Lbxc$13;-><init>(Lbxc;Lbvr;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$10;

    invoke-direct {v1, p0, p1}, Lbxc$10;-><init>(Lbxc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 332
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$7;

    invoke-direct {v1, p0, p1, p2}, Lbxc$7;-><init>(Lbxc;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 332
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public c()F
    .locals 3

    .line 226
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$23;

    invoke-direct {v1, p0}, Lbxc$23;-><init>(Lbxc;)V

    const/4 v2, 0x0

    .line 236
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 96
    iget-object v0, p0, Lbxc;->c:Lcom/xiaopeng/speech/common/util/f;

    new-instance v1, Lbxc$12;

    invoke-direct {v1, p0, p1}, Lbxc$12;-><init>(Lbxc;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;J)V

    const-string p1, ""

    return-object p1
.end method

.method public c(I)V
    .locals 2

    .line 348
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$8;

    invoke-direct {v1, p0, p1}, Lbxc$8;-><init>(Lbxc;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()I
    .locals 3

    .line 256
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$2;

    invoke-direct {v1, p0}, Lbxc$2;-><init>(Lbxc;)V

    const/4 v2, 0x0

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 442
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$15;

    invoke-direct {v1, p0}, Lbxc$15;-><init>(Lbxc;)V

    const/4 v2, 0x0

    .line 452
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 457
    iget-object v0, p0, Lbxc;->d:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxc$16;

    invoke-direct {v1, p0}, Lbxc$16;-><init>(Lbxc;)V

    const/4 v2, 0x0

    .line 468
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 457
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
