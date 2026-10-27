.class public abstract Lbae;
.super Lbdn;
.source "MusicInfoOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbae$a;
    }
.end annotation

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

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lban;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lban<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lbdn;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbae;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbae;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbae;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    iput-object p1, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    .line 47
    new-instance p1, Lban;

    invoke-virtual {p0}, Lbae;->h()I

    move-result v0

    const-string v1, "MusicInfoOperation(Collect)"

    invoke-direct {p1, v1, v0}, Lban;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lbae;->e:Lban;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 502
    iget-object p1, p0, Lbae;->e:Lban;

    invoke-virtual {p1, p2}, Lban;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MusicInfoOperation"

    const-string v3, "initAllList: ================ "

    .line 70
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lbae;->j()Ljava/util/List;

    move-result-object v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAllList: deletedLoveList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lbae;->q()Ljava/util/List;

    move-result-object v3

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAllList: loveList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lbae;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAllList: time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lbae;->g()V

    .line 78
    new-instance v0, Lase$a;

    invoke-direct {v0}, Lase$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 512
    iget-object p1, p0, Lbae;->e:Lban;

    invoke-virtual {p1, p2, p3}, Lban;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lbae;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lbae;->a()V

    return-void
.end method

.method static synthetic a(Lbae;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method static synthetic a(Lbae;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbae;->d(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, p1}, Lbae;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 140
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p4, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 143
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1, p2}, Lbae;->a(II)Ljava/util/List;

    move-result-object p1

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lbae;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method static synthetic b(Lbae;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lbae;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(IJ)V
    .locals 1

    .line 127
    new-instance v0, Lbae$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lbae$2;-><init>(Lbae;IJ)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic b(Lbae;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method static synthetic b(Lbae;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbae;->e(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicInfoOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, p1}, Lbae;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 193
    iget-object v3, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterInsertList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicInfoOperation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 226
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 228
    invoke-virtual {p0, v1}, Lbae;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "MusicInfoOperation"

    const-string v1, "updateAsync"

    .line 232
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MusicInfoOperation"

    .line 257
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 259
    invoke-virtual {p0, v3}, Lbae;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteInTx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "updateAsync"

    .line 264
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v1, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p1

    const/16 v1, 0x32

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    move v0, p1

    :cond_3
    :goto_0
    return v0
.end method

.method private j()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 82
    invoke-direct {p0, v0, v1}, Lbae;->b(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 85
    iget-object v3, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private q()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lbae;->h()I

    move-result v0

    const/16 v1, 0x32

    .line 96
    invoke-direct {p0, v1, v0}, Lbae;->b(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 99
    iget-object v5, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 103
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lbae;->b(IJ)V

    :cond_1
    if-nez v2, :cond_2

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 110
    :cond_2
    invoke-virtual {p0}, Lbae;->g()V

    .line 111
    new-instance v0, Lase$a;

    invoke-direct {v0}, Lase$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    if-nez p2, :cond_0

    .line 317
    iget-object p2, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lbae;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbae;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end method

.method public a(IZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lbae;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lbae;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-direct {p0, p1, v0}, Lbae;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 469
    :cond_0
    iget-object v1, p0, Lbae;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    iget-object v3, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x32

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 473
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v6

    if-eq v6, p1, :cond_2

    if-eq p1, v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v6

    if-ne v6, p1, :cond_1

    :cond_2
    if-nez p2, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    .line 478
    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSortCreateTime(J)V

    goto :goto_2

    .line 476
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSortCreateTime(J)V

    .line 480
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    if-ne p1, v5, :cond_7

    .line 483
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 484
    new-instance p2, Lbae$a;

    invoke-direct {p2, p1}, Lbae$a;-><init>(I)V

    invoke-interface {v1, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    if-ne p1, v5, :cond_7

    .line 485
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0}, Lbae;->h()I

    move-result v3

    if-le p2, v3, :cond_7

    .line 486
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-virtual {p0}, Lbae;->h()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, p2, v3, v4}, Lbae;->a(Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    .line 488
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAsync:love:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicInfoOperation"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0, p2}, Lbae;->a(Ljava/util/List;)V

    .line 494
    :cond_7
    iget-object p2, p0, Lbae;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 495
    invoke-direct {p0, p1, v0, v1}, Lbae;->a(ILjava/lang/String;Ljava/util/List;)V

    :cond_8
    return-object v1
.end method

.method protected abstract a(IJ)V
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 3

    .line 155
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0, p1}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    const/4 v0, 0x5

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "MusicInfoOperation"

    const-string v2, "saveSync: id = %s, name = %s , album = %s, musicFrom = %d, updateOnly = %s "

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lbae;->g()V

    .line 160
    new-instance v0, Lase$a;

    invoke-direct {v0, p1, p2}, Lase$a;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 238
    iget-object v2, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " musicFrom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicInfoOperation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lbae$5;

    invoke-direct {v0, p0, p1}, Lbae$5;-><init>(Lbae;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 251
    invoke-virtual {p0}, Lbae;->g()V

    .line 252
    new-instance p1, Lase$a;

    invoke-direct {p1}, Lase$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1}, Lbae;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 207
    iget-object v2, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Lbae$4;

    invoke-direct {v0, p0, p1, p2}, Lbae$4;-><init>(Lbae;Ljava/util/List;Z)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 218
    :cond_1
    invoke-virtual {p0}, Lbae;->g()V

    if-eqz p2, :cond_2

    .line 220
    new-instance p1, Lase$a;

    invoke-direct {p1}, Lase$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbae;->e(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract b()I
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation
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

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 3

    .line 168
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Lbae$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lbae$3;-><init>(Lbae;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 181
    invoke-virtual {p0}, Lbae;->g()V

    .line 182
    new-instance v0, Lase$a;

    invoke-direct {v0, p1, p2}, Lase$a;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x32

    .line 531
    invoke-virtual {p0, v1, v0}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 532
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 536
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "%s_%s"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 538
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 541
    :cond_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 542
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 543
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isAppend()Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 544
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 547
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 548
    new-instance v1, Lbae$7;

    invoke-direct {v1, p0, p1}, Lbae$7;-><init>(Lbae;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 554
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 555
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 556
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 557
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "MusicInfoOperation"

    const-string v4, "preUpdateCollectMusic: %s,%s"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v2, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {p0}, Lbae;->c()Lbci;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method protected abstract c()Lbci;
.end method

.method public c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 323
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lbae;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbae;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    return-object p1

    .line 326
    :cond_0
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 338
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 339
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 342
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 348
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lbae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Lbae;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    iget-object p1, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p0}, Lbae;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected abstract c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")TK;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 363
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 367
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1}, Lbae;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Lbae;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    iget-object p1, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {p0}, Lbae;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 51
    iget-object v0, p0, Lbae;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbae;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lbae;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    new-instance v0, Lbae$1;

    invoke-direct {v0, p0}, Lbae$1;-><init>(Lbae;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, p1, v0}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public e()I
    .locals 3

    .line 387
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 389
    invoke-virtual {p0, v2}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAll: == accountType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbae;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicInfoOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 458
    iget-object v0, p0, Lbae;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 459
    invoke-virtual {p0}, Lbae;->g()V

    .line 460
    new-instance v0, Lase$a;

    invoke-direct {v0}, Lase$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lbae;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v0, Lbae$6;

    invoke-direct {v0, p0, p1}, Lbae$6;-><init>(Lbae;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 277
    invoke-virtual {p0}, Lbae;->g()V

    .line 278
    new-instance v0, Lase$a;

    invoke-direct {v0, p1}, Lase$a;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "MusicInfoOperation"

    const-string v1, "clearQueryCache:======="

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lbae;->e:Lban;

    invoke-virtual {v0}, Lban;->a()V

    .line 519
    iget-object v0, p0, Lbae;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 397
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHttpCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lbae;->c()Lbci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1

    .line 400
    :cond_0
    invoke-virtual {p0, p1}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method

.method public h()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbae;->e(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method
