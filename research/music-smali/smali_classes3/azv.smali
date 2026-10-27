.class public abstract Lazv;
.super Lbdn;
.source "LocalLoveOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/greenrobot/greendao/AbstractDao;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lbdn;"
    }
.end annotation


# instance fields
.field protected a:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lbdn;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lazv;->b:Ljava/util/HashSet;

    .line 30
    iput-object p1, p0, Lazv;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method

.method static synthetic a(Lazv;)Ljava/util/HashSet;
    .locals 0

    .line 21
    iget-object p0, p0, Lazv;->b:Ljava/util/HashSet;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lazv;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lazv;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    new-instance v0, Lazv$2;

    invoke-direct {v0, p0, p1, p2}, Lazv$2;-><init>(Lazv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lazv;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lazv;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 206
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0, p2}, Lazv;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    .line 208
    invoke-virtual {p0}, Lazv;->c()Lbae;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lbae;->a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-nez v3, :cond_4

    .line 209
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lazv;->f()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 210
    :cond_2
    invoke-virtual {p0, p1, v1}, Lazv;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lazv;->c()Lbae;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lbae;->a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 212
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p3

    const/16 v2, 0x32

    if-ne p3, v2, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result p1

    if-nez p1, :cond_3

    .line 213
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAsync:hash="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lazv;->c()Lbae;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbae;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 215
    new-instance p1, Lasj$r;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p3, v1, v0, p2}, Lasj$r;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeLoveAsync:hash="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_4
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    .line 220
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 221
    invoke-direct {p0, p1, v1}, Lazv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lazv;->c()Lbae;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbae;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 223
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLoveAsync:hash="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " saveInfo = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " musicInfo = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v4

    :cond_6
    if-eqz v3, :cond_7

    .line 225
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_7

    .line 226
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 227
    invoke-virtual {p0}, Lazv;->c()Lbae;

    move-result-object p1

    invoke-virtual {p1, v3}, Lbae;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 231
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "refreshLoveCreateTime:hash="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :cond_7
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateLoveStatusInternal :hash="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/musicradio/bean/db/LocalLove;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoveStatusAsync before run: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", musicInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lazv$6;

    invoke-direct {v0, p0, p2, p1}, Lazv$6;-><init>(Lazv;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lazv;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lazv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Lazv$5;

    invoke-direct {v1, p0, p1, v0}, Lazv$5;-><init>(Lazv;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lazv;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lazv;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract b()I
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 34
    invoke-virtual {p0}, Lazv;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 35
    invoke-virtual {p0}, Lazv;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCached:isMusicBinded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lazv;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lazv;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance v0, Lazv$1;

    invoke-direct {v0, p0, p1}, Lazv$1;-><init>(Lazv;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected abstract c()Lbae;
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lazv;->e()V

    .line 122
    new-instance v0, Lazv$4;

    invoke-direct {v0, p0, p1}, Lazv$4;-><init>(Lazv;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lazv;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lazv;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    new-instance v0, Lazv$3;

    invoke-direct {v0, p0, p1, p2}, Lazv$3;-><init>(Lazv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract d()Lbef;
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    .line 64
    iget-object v0, p0, Lazv;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lazv;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalLoveOperationBase"

    return-object v0
.end method
