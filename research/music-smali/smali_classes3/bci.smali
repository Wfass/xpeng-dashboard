.class public Lbci;
.super Ljava/lang/Object;
.source "LocalLoveManager.java"

# interfaces
.implements Lbdq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbci$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/adapter/Call;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbci;->c:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Lbci$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbci$1;-><init>(Lbci;Landroid/os/Looper;)V

    iput-object v0, p0, Lbci;->d:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0}, Lbci;->b()V

    return-void
.end method

.method private static a(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 208
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v1, :cond_0

    const/16 v3, 0x2c

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic a(Lbci;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbci;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-static {p0}, Lbci;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private static b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 183
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 330
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 336
    iget-object v3, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {p1}, Lbci;->b(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    .line 193
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 7

    .line 275
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x493e0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lbci;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v2, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v2, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 286
    iget-object v0, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    :cond_1
    iget-object v2, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 291
    iget-object p1, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_2
    iget-object p1, p0, Lbci;->d:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object p1, p0, Lbci;->d:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static h()Lbci;
    .locals 1

    .line 71
    sget-object v0, Lbci$a;->a:Lbci;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, v0}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lbci;->g()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "updateMusicLove"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 227
    :cond_0
    new-instance v0, Lbci$3;

    invoke-direct {v0, p0, p2, p1}, Lbci$3;-><init>(Lbci;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 307
    iget-object p2, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_1
    invoke-static {p1}, Lbci;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 310
    invoke-virtual {p0}, Lbci;->d()Lazv;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lazv;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lbci;->d()Lazv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lazv;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "LocalLoveManager"

    const-string v1, "updateLove: ====="

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, p1, p2}, Lbci;->b(Ljava/util/List;Z)V

    .line 326
    invoke-virtual {p0}, Lbci;->d()Lazv;

    move-result-object p2

    invoke-virtual {p2, p1}, Lazv;->a(Ljava/util/List;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 79
    invoke-static {}, Lbdv;->a()Lbdv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbdv;->a(Lbdq;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, p1, p2, v0}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZ)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lbci;->e()Lbae;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbae;->a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lbci;->d()Lazv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lazv;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 251
    :cond_3
    invoke-virtual {p0}, Lbci;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Lazv;
    .locals 1

    .line 87
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbae;
    .locals 1

    .line 91
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 6

    .line 126
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lbci;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchQueue:network not available"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 131
    iget-object v1, p0, Lbci;->c:Ljava/util/LinkedList;

    monitor-enter v1

    const/4 v2, 0x0

    .line 133
    :goto_0
    :try_start_0
    iget-object v3, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 134
    iget-object v3, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lbci;->d:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 142
    invoke-static {v0}, Lbci;->a(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v2

    invoke-virtual {p0}, Lbci;->c()I

    move-result v3

    new-instance v4, Lbci$2;

    invoke-direct {v4, p0, v1, v0}, Lbci$2;-><init>(Lbci;Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-virtual {v2, v1, v3, v4}, Lbim;->a(Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 140
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalLoveManager"

    return-object v0
.end method

.method public k()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lbci;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "clearUserData"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "clearUserData: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    iget-object v0, p0, Lbci;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 102
    iget-object v0, p0, Lbci;->c:Ljava/util/LinkedList;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lbci;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 104
    iget-object v1, p0, Lbci;->d:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v1}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lbci;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lbci;->d()Lazv;

    move-result-object v0

    invoke-virtual {v0}, Lazv;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public r()V
    .locals 0

    return-void
.end method
