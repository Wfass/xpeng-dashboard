.class Layq$3;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Layq;


# direct methods
.method constructor <init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 332
    iput-object p1, p0, Layq$3;->b:Layq;

    iput-object p2, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Layq$3;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Layq$3;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    .line 365
    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 366
    iget-object v0, p0, Layq$3;->b:Layq;

    invoke-virtual {v0}, Layq;->e()Lbae;

    move-result-object v0

    iget-object v2, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "musicLoveInternal musicInfo\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicCollectManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x32

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 370
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicLoveInternal musicFrom == MUSIC_FROM_LOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_0
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_2

    .line 375
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v3

    if-nez v3, :cond_1

    .line 377
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 378
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 381
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 385
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    .line 387
    :goto_0
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldCreateTime(J)V

    .line 388
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 389
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 391
    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v4, Lcom/xiaopeng/musicradio/common/k$g;->player_music_love:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 394
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAppend(Z)V

    .line 395
    iget-object v3, p0, Layq$3;->b:Layq;

    invoke-virtual {v3, v0}, Layq;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 396
    iget-object v3, p0, Layq$3;->b:Layq;

    invoke-virtual {v3}, Layq;->g()Lbci;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZ)V

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 399
    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 400
    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 401
    iget-object v0, p0, Layq$3;->b:Layq;

    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v3}, Layq;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 402
    iget-object v0, p0, Layq$3;->b:Layq;

    invoke-virtual {v0}, Layq;->g()Lbci;

    move-result-object v0

    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v3, v2, v1}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZ)V

    .line 404
    :goto_1
    iget-object v0, p0, Layq$3;->b:Layq;

    iget-object v2, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1, v2}, Layq;->a(Layq;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 405
    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 406
    new-instance v2, Lasj$r;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v2, v3, v0, v1, v4}, Lasj$r;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 335
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    iget-object v0, p0, Layq$3;->b:Layq;

    invoke-virtual {v0}, Layq;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lbea;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 336
    iget-object v0, p0, Layq$3;->b:Layq;

    invoke-virtual {v0, p1}, Layq;->b(Ljava/lang/String;)I

    move-result v0

    .line 337
    iget-object v1, p0, Layq$3;->b:Layq;

    invoke-virtual {v1, p1}, Layq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object p1, p0, Layq$3;->b:Layq;

    invoke-virtual {p1}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "musicLove max count"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    new-instance p1, Lbfh$g;

    iget-object v0, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p1, v0}, Lbfh$g;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 340
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ap;->a()V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p0, Layq$3;->b:Layq;

    invoke-virtual {v1}, Layq;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "musicLove before run "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v1, Layq$3$1;

    invoke-direct {v1, p0}, Layq$3$1;-><init>(Layq$3;)V

    invoke-static {v1}, Lbql;->a(Ljava/lang/Runnable;)V

    .line 350
    new-instance v1, Layq$3$2;

    invoke-direct {v1, p0, p1, v0}, Layq$3$2;-><init>(Layq$3;Ljava/lang/String;I)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
