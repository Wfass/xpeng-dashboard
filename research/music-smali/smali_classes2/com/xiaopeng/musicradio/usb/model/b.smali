.class public Lcom/xiaopeng/musicradio/usb/model/b;
.super Ljava/lang/Object;
.source "UsbMusicModel.java"

# interfaces
.implements Lbrh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/usb/model/b$a;
    }
.end annotation


# static fields
.field private static volatile m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private volatile a:I

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Ljava/lang/Runnable;

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:J

.field private f:Z

.field private g:J

.field private volatile h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private p:Lbri;

.field private volatile q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile s:Z

.field private t:Lcom/xiaopeng/musicradio/common/e$a;

.field private u:J

.field private volatile v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile w:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/musicradio/common/b;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/regex/Pattern;

.field private y:Ljava/util/regex/Pattern;

.field private z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 82
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/b$1;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->c:Ljava/lang/Runnable;

    const-wide v0, 0x7fffffffffffffffL

    .line 91
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->e:J

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    const-wide/16 v1, 0x0

    .line 93
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->g:J

    .line 94
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    .line 95
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    .line 98
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    .line 100
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/b$3;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->t:Lcom/xiaopeng/musicradio/common/e$a;

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 335
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->w:Ljava/util/Collection;

    const/4 v0, 0x2

    const-string v1, "(?!DVR_).+\\.(mp3|mp4|m4a|flac|wav|ogg|aac|mkv)"

    .line 336
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->x:Ljava/util/regex/Pattern;

    const-string v1, ".+\\..+"

    .line 337
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->y:Ljava/util/regex/Pattern;

    .line 338
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/xiaopeng/musicradio/usb/model/b$4;

    invoke-direct {v8, p0}, Lcom/xiaopeng/musicradio/usb/model/b$4;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    const/4 v2, 0x3

    const/4 v3, 0x5

    const-wide/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->z:Ljava/util/concurrent/ExecutorService;

    .line 684
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/b$10;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->A:Ljava/lang/Runnable;

    .line 693
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/b$2;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->B:Ljava/lang/Runnable;

    const-string v0, "UsbMusicModel"

    const-string v1, "UsbMusicModel: \u521d\u59cb\u5316"

    .line 116
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/musicradio/common/e;->a()Lcom/xiaopeng/musicradio/common/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->t:Lcom/xiaopeng/musicradio/common/e$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/e;->a(Lcom/xiaopeng/musicradio/common/e$a;)V

    .line 118
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lbri;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lbri;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    invoke-virtual {v0, p0}, Lbri;->a(Lbrh$a;)V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->n()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/usb/model/b$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 4

    .line 736
    sget v0, Lbrr$a;->music_unknow_singer:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 738
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_usb_prefix_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lbrg;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setData(Ljava/lang/String;)V

    const/16 v2, 0x3d

    .line 742
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    const-string v2, "-1234"

    .line 743
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 745
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileSize(J)V

    .line 746
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()Lcom/xiaopeng/musicradio/usb/model/b;
    .locals 1

    .line 112
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b$a;->a:Lcom/xiaopeng/musicradio/usb/model/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->b:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 785
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 789
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 790
    :goto_0
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    .line 791
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->b(I)V

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_5

    .line 796
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 797
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbrr$a;->usb_unmounted_hint:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 798
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v1, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 800
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->u()V

    if-eqz p2, :cond_4

    .line 801
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->g:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x2710

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    if-eqz v0, :cond_4

    .line 803
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p2, Lbrr$a;->usb_unmounted_hint:I

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->g:J

    .line 806
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->v()V

    .line 807
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->w()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->p()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p10}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/util/List;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->e(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/musicradio/common/b;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-wide/from16 v13, p9

    .line 399
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;-><init>()V

    .line 402
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v15, v0

    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 406
    array-length v9, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v1, v10, v8

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v2, v11, Lcom/xiaopeng/musicradio/usb/model/b;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v2, "UsbMusicModel"

    if-eqz v0, :cond_4

    .line 409
    iget-wide v3, v11, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    cmp-long v0, v13, v3

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findAllFoldAndMusicFile: stopCurrent mLocal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";mStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v11, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 413
    :cond_1
    invoke-direct {v11, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 414
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 415
    invoke-virtual {v15, v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 416
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p4

    invoke-interface {v7, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 418
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p5

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v4, p6

    .line 419
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v4, p6

    .line 421
    :goto_1
    iget-wide v4, v11, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    cmp-long v0, v13, v4

    if-eqz v0, :cond_3

    const-string v0, "findAllFoldAndMusicFile: stopCurrent mLocal2:"

    .line 422
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 425
    :cond_3
    iget-object v0, v11, Lcom/xiaopeng/musicradio/usb/model/b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/xiaopeng/musicradio/usb/model/b$6;

    invoke-direct {v4, v11, v13, v14, v3}, Lcom/xiaopeng/musicradio/usb/model/b$6;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;JLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept: file path = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v7, p4

    move-object/from16 v6, p5

    .line 436
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;-><init>()V

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v15, v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasRepeatedFold:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_3

    .line 443
    :cond_5
    invoke-virtual {v15, v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept: fold path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v4, p9

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v16, v8

    move-object/from16 v8, p4

    move/from16 v17, v9

    move-object/from16 v9, p5

    move-object/from16 v18, v10

    move-object/from16 v10, p6

    .line 446
    invoke-direct/range {v0 .. v10}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;JLjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_3

    :cond_6
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not findAllFoldAndMusicFile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v16, 0x1

    move/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_0

    .line 455
    :cond_7
    invoke-virtual {v15}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->e()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;JLjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/musicradio/common/b;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 374
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 375
    new-instance v12, Lcom/xiaopeng/musicradio/usb/model/b$5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/xiaopeng/musicradio/usb/model/b$5;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;Ljava/io/File;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;J)V

    move-object/from16 v0, p3

    .line 390
    invoke-interface {v0, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 391
    iget-object v1, v0, Lcom/xiaopeng/musicradio/usb/model/b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 647
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 650
    :cond_0
    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/usb/model/b;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->b:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 853
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 854
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->x()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 856
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$c;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 858
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$d;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 533
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 535
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasParse(Z)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1
    sget-object p1, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const-string v0, "UsbMusicModel"

    if-lez p1, :cond_2

    const-string p1, "at least 1 mounted disk, callback refresh files"

    .line 197
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->b(Ljava/lang/Runnable;)V

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->p()V

    goto :goto_0

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->o()V

    const/4 p1, 0x3

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(IZ)V

    .line 204
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unmount: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accountType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_3

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 208
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->stop()V

    :cond_3
    return-void
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 540
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 541
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->z()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->n()V

    return-void
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNoAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 556
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 559
    new-instance v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->u()V

    return-void
.end method

.method private e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 586
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 587
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-nez v1, :cond_0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentPlayLogo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbMusicModel"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 591
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->m()V

    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->f(Ljava/util/List;)V

    const/4 p1, 0x2

    .line 329
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->a(I)V

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->r()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/usb/model/b;)Ljava/lang/Runnable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method private declared-synchronized f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    monitor-enter p0

    .line 712
    :try_start_0
    sget v0, Lbrr$a;->music_unknow_singer:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    .line 714
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    if-nez v1, :cond_1

    .line 716
    new-instance v1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;-><init>()V

    .line 717
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 459
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/b$7;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/usb/model/b;)J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    return-wide v0
.end method

.method private declared-synchronized g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    monitor-enter p0

    .line 724
    :try_start_0
    sget v0, Lbrr$a;->radio_unknown_album:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    if-nez v1, :cond_1

    .line 728
    new-instance v1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;-><init>()V

    .line 729
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->b(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/usb/model/b;)Lbri;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->q()V

    return-void
.end method

.method static synthetic j(Lcom/xiaopeng/musicradio/usb/model/b;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->s:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->s()V

    return-void
.end method

.method static synthetic l(Lcom/xiaopeng/musicradio/usb/model/b;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->r()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 181
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbrr$a;->usb_unmountable:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 184
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    .line 185
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->b(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 6

    .line 227
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 228
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 231
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    const-string v3, "mPath"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 233
    sget-object v4, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMountTag uuid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isRemovable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isemulated:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", state:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UsbMusicModel"

    .line 235
    invoke-static {v4, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->p()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 246
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(I)V

    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->s:Z

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    const-string v0, "UsbMusicModel"

    const-string v2, "reset: "

    .line 267
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 272
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->w:Ljava/util/Collection;

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p()V
    .locals 15

    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(I)V

    .line 283
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->u()V

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    sget-object v2, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->o()V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 290
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listCandidateMusics:StartUsbFileScan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ";PathSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsbMusicModel"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v4, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 293
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 295
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 296
    new-instance v5, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;-><init>()V

    .line 297
    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Ljava/lang/String;)V

    .line 298
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V

    .line 299
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 301
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/model/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/usb/model/b;->w:Ljava/util/Collection;

    iget-object v10, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    iget-object v11, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v12, p0, Lcom/xiaopeng/musicradio/usb/model/b;->l:Ljava/util/Map;

    iget-object v13, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v14, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    move-object v4, p0

    move-wide v8, v2

    invoke-direct/range {v4 .. v14}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Collection;JLjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private q()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 656
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->r()V

    return-void
.end method

.method private r()V
    .locals 6

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkParseState mParseCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUsbFileCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Landroid/support/rastermill/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 663
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkParseState finish : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/usb/model/b;->u:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->s()V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->A:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private s()V
    .locals 2

    const-string v0, "UsbMusicModel"

    const-string v1, "finishParseAll: ====="

    .line 675
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->t()V

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 678
    invoke-static {}, Lbrb;->a()Lbrb;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbrb;->a(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    .line 680
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->s:Z

    .line 681
    new-instance v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$ParseState;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$ParseState;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 706
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 707
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/model/b;->g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->w:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/b;

    .line 755
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/b;->b()V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->w:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method private v()V
    .locals 5

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/16 v4, 0x3e7

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 820
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 826
    :cond_2
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lbqy;->a(ILjava/util/List;)V

    return-void
.end method

.method private w()V
    .locals 6

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x3e7

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-ge v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 835
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-ge v2, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 842
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 845
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 848
    :cond_4
    invoke-static {}, Lbqx;->a()Lbqx;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Lbqx;->a(ILjava/util/List;)V

    return-void
.end method

.method private x()V
    .locals 5

    .line 864
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    if-eqz v0, :cond_1

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->e:J

    sub-long/2addr v0, v2

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebootPlayIfNeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbMusicModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 867
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 868
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 872
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->e:J

    const/4 v0, 0x0

    .line 873
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    :cond_1
    return-void
.end method

.method private y()Z
    .locals 3

    const/4 v0, 0x0

    .line 879
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 880
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 881
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 885
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private z()V
    .locals 2

    .line 946
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHasParse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    invoke-static {}, Lbrc;->a()Lbrc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrc;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    invoke-virtual {v1, v0}, Lbri;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 2

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTreeFromPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSongDuration: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbMusicModel"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(J)V

    .line 626
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    invoke-virtual {v0, p1}, Lbri;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 629
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateDuration;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateDuration;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 6

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->isAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance p2, Lcom/xiaopeng/musicradio/usb/model/b$8;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b$8;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/lang/Runnable;)V

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_1

    move-object p1, v0

    .line 493
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 496
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 497
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "parse_no_song"

    .line 499
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 502
    :goto_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSinger()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 503
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSinger()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 505
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 506
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 509
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 510
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_6
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 513
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasParse(Z)V

    .line 514
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 516
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(J)V

    .line 518
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess updateSongLogo: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " logo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 520
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 521
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 522
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 523
    :cond_8
    new-instance v1, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 525
    :cond_9
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 526
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->q()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    invoke-virtual {v0, p1}, Lbri;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMusicModel"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/b$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/musicradio/usb/model/b$9;-><init>(Lcom/xiaopeng/musicradio/usb/model/b;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/model/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    .line 570
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/model/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSongLogo: name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " songId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " logo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsbMusicModel"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parse_no_song"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 574
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 575
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/usb/model/b;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 577
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/usb/model/b;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->p:Lbri;

    invoke-virtual {v1, p1}, Lbri;->b(Ljava/util/List;)V

    .line 582
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 215
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 216
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 219
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 3

    .line 251
    sget-object v0, Lcom/xiaopeng/musicradio/usb/model/b;->m:Ljava/util/HashMap;

    const-string v1, "abcd"

    const-string v2, "/sdcard/Music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->p()V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    .line 599
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSingerLogo: Hash:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " logo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsbMusicModel"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->a(Ljava/lang/String;)V

    .line 603
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    .line 612
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    .line 614
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->a(Ljava/lang/String;)V

    .line 615
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->s:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 761
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->a:I

    return v0
.end method

.method public f()V
    .locals 2

    .line 765
    invoke-static {}, Lcom/xiaopeng/musicradio/common/e;->a()Lcom/xiaopeng/musicradio/common/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->t:Lcom/xiaopeng/musicradio/common/e$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/e;->b(Lcom/xiaopeng/musicradio/common/e$a;)V

    return-void
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public h()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->o:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->j:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->k:Ljava/util/Map;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 2

    const-string v0, "UsbMusicModel"

    const-string v1, "addRebootPlayTask"

    .line 909
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 910
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/usb/model/b;->e:J

    return-void
.end method

.method public onInfoChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 938
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 939
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/model/b;->z()V

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 916
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 917
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    .line 920
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 921
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 925
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    goto :goto_0

    .line 929
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    goto :goto_0

    .line 932
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/usb/model/b;->f:Z

    :cond_3
    :goto_0
    return-void
.end method
