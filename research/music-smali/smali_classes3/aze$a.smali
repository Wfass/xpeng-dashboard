.class Laze$a;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Z

.field private d:J

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laze$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    iput-object p1, p0, Laze$a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Laze$a;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Laze$a;->d:J

    return-wide v0
.end method

.method private a(I)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
            ">;>;"
        }
    .end annotation

    .line 336
    new-instance v0, Laze$a$7;

    invoke-direct {v0, p0, p1}, Laze$a$7;-><init>(Laze$a;I)V

    sget-object p1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Laze$a;I)Lio/reactivex/Flowable;
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Laze$a;->a(I)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Laze$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 130
    iput-object p1, p0, Laze$a;->b:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Laze$a;Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)Ljava/util/List;
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Laze$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private a(IILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;>;)V"
        }
    .end annotation

    .line 269
    new-instance p2, Laze$a$6;

    invoke-direct {p2, p0, p1, p3}, Laze$a$6;-><init>(Laze$a;ILandroid/util/SparseArray;)V

    invoke-static {p2}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x32

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 220
    div-int/lit8 p1, p1, 0x32

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch: totalPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramFetchModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    .line 223
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 224
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 225
    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 226
    invoke-static {p2, v1}, Lio/reactivex/Flowable;->range(II)Lio/reactivex/Flowable;

    move-result-object p2

    .line 227
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p2

    .line 228
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p2

    new-instance v0, Laze$a$5;

    invoke-direct {v0, p0}, Laze$a$5;-><init>(Laze$a;)V

    .line 229
    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p2

    .line 235
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p2

    .line 236
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p2

    new-instance v0, Laze$a$2;

    invoke-direct {v0, p0, v2}, Laze$a$2;-><init>(Laze$a;Landroid/util/SparseArray;)V

    new-instance v3, Laze$a$3;

    invoke-direct {v3, p0}, Laze$a$3;-><init>(Laze$a;)V

    new-instance v4, Laze$a$4;

    invoke-direct {v4, p0, v1, p1, v2}, Laze$a$4;-><init>(Laze$a;IILandroid/util/SparseArray;)V

    .line 237
    invoke-virtual {p2, v0, v3, v4}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Laze$a;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Laze$a;IILandroid/util/SparseArray;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Laze$a;->a(IILandroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic a(Laze$a;ILjava/util/List;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Laze$a;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Laze$a;Ljava/util/List;J)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Laze$a;->a(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic a(Laze$a;Z)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Laze$a;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;J)V"
        }
    .end annotation

    .line 302
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    iget-object v1, p0, Laze$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laze;->a(Laze;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ProgramFetchModel"

    if-eqz v0, :cond_0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onFetchSucceed skip : mOpenId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Laze$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 306
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 311
    :cond_1
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->g()Ljava/util/HashMap;

    move-result-object v0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFetchSucceed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",loveMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    move p3, p2

    .line 313
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    .line 314
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {}, Laze;->e()J

    move-result-wide v3

    int-to-long v5, p3

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;J)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbmp;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 320
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 322
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    .line 323
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getTs()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long p3, v6, v8

    if-lez p3, :cond_3

    .line 324
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object p3

    invoke-virtual {p3, v4, v5}, Lbmp;->a(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFetchSucceed:deleteCount="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_5
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object p1

    invoke-virtual {p1}, Lbmp;->b()V

    .line 332
    invoke-static {}, Laze;->a()Laze;

    move-result-object p1

    invoke-static {p1}, Laze;->a(Laze;)V

    return-void

    .line 307
    :cond_6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFetchSucceed:list empty : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Laze;->a()Laze;

    move-result-object p1

    invoke-static {p1}, Laze;->a(Laze;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Laze$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_0

    .line 143
    invoke-static {}, Laze;->a()Laze;

    move-result-object p1

    iget-object v0, p0, Laze$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Laze;->a(Laze;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Laze;->a()Laze;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laze;->a(Laze;Z)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Laze$a;)Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Laze$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Laze$a;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Laze$a;->c:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Laze$a;->c:Z

    .line 154
    iget-object v0, p0, Laze$a;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Laze$a;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laze$a;->d:J

    const/4 v0, 0x1

    .line 161
    invoke-direct {p0, v0}, Laze$a;->a(Z)V

    .line 162
    new-instance v1, Laze$a$1;

    invoke-direct {v1, p0}, Laze$a$1;-><init>(Laze$a;)V

    const/16 v2, 0x32

    invoke-static {v0, v2, v1}, Lazd;->a(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
