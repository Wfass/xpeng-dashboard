.class public Layt$a;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Z

.field protected c:J

.field protected d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:Layt;


# direct methods
.method public constructor <init>(Layt;Ljava/lang/String;)V
    .locals 1

    .line 370
    iput-object p1, p0, Layt$a;->e:Layt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Layt$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 371
    iput-object p2, p0, Layt$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;JIIZZ)Ljava/lang/Runnable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;JIIZZ)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 462
    iget-object v3, v0, Layt$a;->e:Layt;

    iget-object v4, v0, Layt$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Layt;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MusicFetchModel"

    if-eqz v3, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFetchSucceed skip : mOpenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Layt$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    const/4 v3, 0x0

    const/16 v6, 0x32

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    .line 466
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 474
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 475
    iget-object v8, v0, Layt$a;->e:Layt;

    invoke-virtual {v8}, Layt;->h()I

    move-result v9

    invoke-virtual {v8, v3, v1, v9}, Layt;->a(ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFetchSucceed: insertList="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",listSize="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v3, v0, Layt$a;->e:Layt;

    invoke-virtual {v3}, Layt;->i()Lbae;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lbae;->a(Ljava/util/List;Z)V

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFetchSucceed:time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, p2

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, v0, Layt$a;->e:Layt;

    invoke-virtual {v3}, Layt;->f()V

    .line 480
    new-instance v3, Layt$a$2;

    move/from16 v4, p5

    invoke-direct {v3, v0, v2, v4}, Layt$a$2;-><init>(Layt$a;II)V

    .line 488
    iget-object v4, v0, Layt$a;->e:Layt;

    invoke-virtual {v4}, Layt;->d()Lbci;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lbci;->a(Ljava/util/List;Z)V

    if-eqz p6, :cond_3

    if-le v2, v6, :cond_3

    const-wide/16 v4, 0x0

    .line 491
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 492
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v4

    :cond_2
    move-wide v13, v4

    .line 494
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfc;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/service/MusicMineService;

    if-eqz v1, :cond_3

    .line 496
    new-instance v2, Lcom/xiaopeng/musicradio/datalist/f;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v15, 0x32

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lcom/xiaopeng/musicradio/datalist/f;-><init>(IIZIJI)V

    .line 497
    iget-object v4, v0, Layt$a;->e:Layt;

    invoke-virtual {v4}, Layt;->h()I

    move-result v4

    invoke-virtual {v1, v2, v7, v4}, Lcom/xiaopeng/musicradio/service/MusicMineService;->getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;

    .line 500
    :cond_3
    new-instance v1, Layt$a$3;

    invoke-direct {v1, v0}, Layt$a$3;-><init>(Layt$a;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v3

    .line 467
    :cond_4
    :goto_0
    iget-object v1, v0, Layt$a;->e:Layt;

    invoke-virtual {v1}, Layt;->d()Lbci;

    move-result-object v1

    iget-object v2, v0, Layt$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbci;->a(Ljava/lang/String;)V

    .line 468
    iget-object v1, v0, Layt$a;->e:Layt;

    invoke-virtual {v1}, Layt;->i()Lbae;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v1

    .line 469
    iget-object v2, v0, Layt$a;->e:Layt;

    invoke-virtual {v2}, Layt;->i()Lbae;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbae;->a(Ljava/util/List;)V

    .line 470
    new-instance v2, Lbfh$f;

    invoke-direct {v2, v7}, Lbfh$f;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFetchSucceed:list empty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public a()V
    .locals 4

    const-string v0, "MusicFetchModel"

    const-string v1, "post: ========="

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Layt$a;->c:J

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, v0}, Layt$a;->a(Z)V

    .line 381
    iget-object v1, p0, Layt$a;->e:Layt;

    invoke-virtual {v1}, Layt;->h()I

    move-result v1

    new-instance v2, Layt$a$1;

    invoke-direct {v2, p0}, Layt$a$1;-><init>(Layt$a;)V

    const/16 v3, 0x32

    invoke-static {v0, v3, v1, v2}, Layx;->a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaskRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicFetchModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Layt$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_0

    .line 451
    iget-object p1, p0, Layt$a;->e:Layt;

    invoke-virtual {p1}, Layt;->g()V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 7

    .line 432
    iget-object v0, p0, Layt$a;->e:Layt;

    iget-object v1, p0, Layt$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Layt;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MusicFetchModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post:skip:mOpenId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layt$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",time="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Layt$a;->c:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0, v2}, Layt$a;->a(Z)V

    return v2

    .line 437
    :cond_0
    iget-boolean v0, p0, Layt$a;->b:Z

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post:skip:disposed:time="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Layt$a;->c:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0, v2}, Layt$a;->a(Z)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 510
    iget-object v0, p0, Layt$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Layt$a;->b:Z

    return-void
.end method
