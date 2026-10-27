.class public Laym;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/bluetooth/BluetoothService;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/d;
.implements Lcom/xiaopeng/musicradio/model/bluetooth/j$a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/XPMusic/service/bluetooth/nfore"
.end annotation


# instance fields
.field private A:Lanq;

.field private B:Lanm;

.field private C:Lann;

.field private a:Landroid/content/Context;

.field private b:Lanw;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/model/bluetooth/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lanu;

.field private h:Lanl;

.field private i:Lank;

.field private j:Lant;

.field private k:Z

.field private l:I

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

.field private q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

.field private r:I

.field private s:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field private t:Lio/reactivex/disposables/Disposable;

.field private u:Lio/reactivex/disposables/Disposable;

.field private v:Lio/reactivex/disposables/Disposable;

.field private w:I

.field private x:Layl;

.field private y:Z

.field private z:Lano;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laym;->c:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laym;->d:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laym;->e:Ljava/util/Set;

    const-string v0, "00:00:00:00:00:00"

    .line 101
    iput-object v0, p0, Laym;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Laym;->l:I

    .line 116
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;-><init>()V

    iput-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    .line 117
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;-><init>()V

    iput-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Laym;->r:I

    .line 120
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    iput-object v1, p0, Laym;->s:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    const/16 v1, 0x78

    .line 124
    iput v1, p0, Laym;->w:I

    .line 127
    iput-boolean v0, p0, Laym;->y:Z

    .line 234
    new-instance v0, Laym$13;

    invoke-direct {v0, p0}, Laym$13;-><init>(Laym;)V

    iput-object v0, p0, Laym;->z:Lano;

    .line 264
    new-instance v0, Laym$14;

    invoke-direct {v0, p0}, Laym$14;-><init>(Laym;)V

    iput-object v0, p0, Laym;->A:Lanq;

    .line 292
    new-instance v0, Laym$15;

    invoke-direct {v0, p0}, Laym$15;-><init>(Laym;)V

    iput-object v0, p0, Laym;->B:Lanm;

    .line 314
    new-instance v0, Laym$16;

    invoke-direct {v0, p0}, Laym$16;-><init>(Laym;)V

    iput-object v0, p0, Laym;->C:Lann;

    return-void
.end method

.method private A()Z
    .locals 3

    .line 923
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_get_meta"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method private B()Z
    .locals 3

    .line 941
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_get_play_status"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method private C()Z
    .locals 3

    .line 946
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 949
    :cond_0
    iget-boolean v0, p0, Laym;->n:Z

    if-nez v0, :cond_1

    return v1

    .line 952
    :cond_1
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lanl;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 953
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayStatus() called: result = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laym;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothMusicService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private D()V
    .locals 3

    .line 958
    iget-object v0, p0, Laym;->t:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 959
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-wide/16 v0, 0xa

    .line 961
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Laym$8;

    invoke-direct {v1, p0}, Laym$8;-><init>(Laym;)V

    .line 962
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Laym;->t:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic a(Laym;)Lanu;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->g:Lanu;

    return-object p0
.end method

.method static synthetic a(Laym;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 87
    iput-object p1, p0, Laym;->u:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private a(IZ)V
    .locals 3

    .line 619
    iget-object v0, p0, Laym;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/h;

    .line 620
    new-instance v2, Laym$3;

    invoke-direct {v2, p0, v1, p1, p2}, Laym$3;-><init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/h;IZ)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 6

    .line 973
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {p0}, Laym;->i()I

    move-result v3

    move-wide v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(JIJ)V

    .line 976
    invoke-virtual {p0}, Laym;->i()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 978
    iget-object p1, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a()V

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 981
    invoke-direct {p0}, Laym;->D()V

    :cond_1
    return-void
.end method

.method static synthetic a(Laym;JJ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Laym;->a(JJ)V

    return-void
.end method

.method static synthetic a(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Laym;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method

.method static synthetic a(Laym;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Laym;->b(Z)V

    return-void
.end method

.method static synthetic a(Laym;ZLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Laym;->d(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 1

    .line 986
    new-instance v0, Laym$9;

    invoke-direct {v0, p0, p1}, Laym$9;-><init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    .line 470
    iget-boolean v0, p0, Laym;->m:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA2dpConnected(): isConnected = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], address: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], deviceName:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laym;->j:Lant;

    invoke-virtual {v1}, Lant;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, p1, p2}, Laym;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laym;I)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Laym;->e(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Laym;I)I
    .locals 0

    .line 87
    iput p1, p0, Laym;->w:I

    return p1
.end method

.method static synthetic b(Laym;)Lank;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->i:Lank;

    return-object p0
.end method

.method static synthetic b(Laym;ZLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Laym;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Laym;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 671
    iget-boolean v0, p0, Laym;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 674
    :cond_0
    iput-boolean p1, p0, Laym;->k:Z

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Laym;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/g;

    .line 678
    new-instance v2, Laym$4;

    invoke-direct {v2, p0, v1, p1}, Laym$4;-><init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/g;Z)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(ZLjava/lang/String;)V
    .locals 2

    .line 478
    iput-boolean p1, p0, Laym;->m:Z

    .line 479
    iget-object v0, p0, Laym;->i:Lank;

    invoke-virtual {v0, p2}, Lank;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laym;->w:I

    .line 480
    new-instance v0, Lasa$a;

    iget v1, p0, Laym;->w:I

    invoke-direct {v0, v1}, Lasa$a;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 481
    new-instance v0, Lasa$e;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getBtStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lasa$e;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 483
    invoke-direct {p0, p2}, Laym;->b(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Laym;->n()V

    .line 485
    invoke-direct {p0}, Laym;->A()Z

    .line 486
    new-instance p2, Lasa$g;

    iget-object v0, p0, Laym;->j:Lant;

    invoke-virtual {v0}, Lant;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lasa$g;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 487
    new-instance p2, Laym$17;

    invoke-direct {p2, p0}, Laym$17;-><init>(Laym;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lbql;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-direct {p0}, Laym;->o()V

    const/4 p2, 0x0

    .line 497
    invoke-direct {p0, p2}, Laym;->b(Ljava/lang/String;)V

    .line 498
    new-instance p2, Lasa$g;

    const-string v0, ""

    invoke-direct {p2, v0}, Lasa$g;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :goto_0
    const/4 p2, 0x2

    .line 501
    invoke-direct {p0, p2, p1}, Laym;->a(IZ)V

    return-void
.end method

.method static synthetic b(Laym;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Laym;->y:Z

    return p1
.end method

.method static synthetic c(Laym;)Lanl;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->h:Lanl;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 777
    iget-object v0, p0, Laym;->u:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Laym;->u:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 780
    :cond_0
    new-instance v0, Laym$5;

    invoke-direct {v0, p0, p1}, Laym$5;-><init>(Laym;I)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Laym;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Laym;->c(I)V

    return-void
.end method

.method static synthetic c(Laym;ZLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Laym;->c(ZLjava/lang/String;)V

    return-void
.end method

.method private c(ZLjava/lang/String;)V
    .locals 2

    .line 528
    iget-boolean v0, p0, Laym;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAvrcpConnected(): isConnected = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], address = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMusicService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-boolean p1, p0, Laym;->n:Z

    if-eqz p1, :cond_1

    .line 534
    invoke-direct {p0}, Laym;->p()V

    goto :goto_0

    .line 536
    :cond_1
    invoke-direct {p0}, Laym;->q()V

    :goto_0
    const/4 p2, 0x3

    .line 539
    invoke-direct {p0, p2, p1}, Laym;->a(IZ)V

    return-void
.end method

.method private d(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method static synthetic d(Laym;I)I
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Laym;->d(I)I

    move-result p0

    return p0
.end method

.method static synthetic d(Laym;)Lant;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->j:Lant;

    return-object p0
.end method

.method private d(ZLjava/lang/String;)V
    .locals 2

    .line 579
    iget-boolean v0, p0, Laym;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHfpConnected(): isConnected = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], address = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMusicService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-boolean p1, p0, Laym;->o:Z

    if-eqz p1, :cond_1

    .line 585
    invoke-direct {p0}, Laym;->r()V

    goto :goto_0

    .line 587
    :cond_1
    invoke-direct {p0}, Laym;->s()V

    :goto_0
    const/4 p2, 0x0

    .line 589
    invoke-direct {p0, p2, p1}, Laym;->a(IZ)V

    return-void
.end method

.method static synthetic e(Laym;I)I
    .locals 0

    .line 87
    iput p1, p0, Laym;->l:I

    return p1
.end method

.method private e(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method static synthetic e(Laym;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Laym;->m:Z

    return p0
.end method

.method static synthetic f(Laym;)I
    .locals 0

    .line 87
    iget p0, p0, Laym;->w:I

    return p0
.end method

.method static synthetic g(Laym;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Laym;->y()V

    return-void
.end method

.method static synthetic h(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->s:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    return-object p0
.end method

.method static synthetic i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    return-object p0
.end method

.method static synthetic j(Laym;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Laym;->A()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Laym;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Laym;)I
    .locals 0

    .line 87
    iget p0, p0, Laym;->l:I

    return p0
.end method

.method static synthetic m(Laym;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Laym;->x()V

    return-void
.end method

.method static synthetic n(Laym;)Ljava/util/Set;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->e:Ljava/util/Set;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 505
    iget-object v0, p0, Laym;->i:Lank;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 506
    invoke-virtual {v0, v1}, Lank;->a(I)Z

    :cond_0
    return-void
.end method

.method static synthetic o(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/j;
    .locals 0

    .line 87
    iget-object p0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 511
    iget-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    .line 512
    iget-object v0, p0, Laym;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 513
    new-instance v2, Laym$2;

    invoke-direct {v2, p0, v1}, Laym$2;-><init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "00:00:00:00:00:00"

    .line 520
    invoke-direct {p0, v0}, Laym;->b(Ljava/lang/String;)V

    .line 521
    new-instance v0, Lasa$g;

    const-string v1, ""

    invoke-direct {v0, v1}, Lasa$g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Laym;->u:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Laym;->u:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 5

    .line 543
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    .line 544
    invoke-virtual {v0, v2, v3, v4}, Lanl;->a(BJ)Z

    .line 545
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lanl;->a(BJ)Z

    .line 546
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v2, v3, v4}, Lanl;->a(BJ)Z

    .line 548
    iput v1, p0, Laym;->r:I

    .line 549
    invoke-virtual {p0}, Laym;->h()V

    .line 550
    invoke-direct {p0}, Laym;->A()Z

    .line 553
    :cond_0
    sget-boolean v0, Lbsd;->a:Z

    if-eqz v0, :cond_1

    .line 554
    sput-boolean v1, Lbsd;->a:Z

    .line 555
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    .line 557
    :cond_1
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j$a;)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 561
    iget-object v0, p0, Laym;->x:Layl;

    invoke-virtual {v0}, Layl;->a()V

    .line 562
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 563
    invoke-virtual {v0, v1}, Lanl;->a(B)Z

    .line 564
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lanl;->a(B)Z

    .line 565
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanl;->a(B)Z

    .line 568
    :cond_0
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j$a;)V

    .line 570
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 571
    iget-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    const/4 v0, 0x0

    .line 573
    invoke-direct {p0, v0}, Laym;->c(I)V

    .line 575
    iget-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v0

    invoke-direct {p0, v0}, Laym;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method

.method private r()V
    .locals 1

    .line 593
    invoke-virtual {p0}, Laym;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Laym;->b(Z)V

    return-void
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x0

    .line 615
    invoke-direct {p0, v0}, Laym;->b(Z)V

    return-void
.end method

.method private t()Z
    .locals 4

    .line 695
    iget v0, p0, Laym;->l:I

    const/4 v1, 0x1

    const-string v2, "BluetoothMusicService"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "play() called canceled as is playing"

    .line 696
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 699
    :cond_0
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lanl;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 700
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() called: result = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private u()Z
    .locals 3

    .line 712
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 713
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() called: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private v()Z
    .locals 3

    .line 724
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 725
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next() called: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private w()Z
    .locals 3

    .line 736
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 737
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previous() called: result = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private x()V
    .locals 3

    .line 818
    iget v0, p0, Laym;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 828
    iget v0, p0, Laym;->w:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x2710

    .line 829
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Laym$6;

    invoke-direct {v1, p0}, Laym$6;-><init>(Laym;)V

    .line 830
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Laym;->v:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 820
    :cond_1
    invoke-direct {p0}, Laym;->A()Z

    .line 821
    invoke-virtual {p0}, Laym;->h()V

    .line 822
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 823
    iget-object v0, p0, Laym;->p:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a()V

    .line 824
    invoke-direct {p0}, Laym;->y()V

    :cond_2
    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 845
    iget-object v0, p0, Laym;->v:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothMusicService"

    const-string v1, "cancel disposeA2dpStremingCompatibility"

    .line 846
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Laym;->v:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private z()Z
    .locals 2

    .line 912
    iget-object v0, p0, Laym;->h:Lanl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 915
    :cond_0
    iget-boolean v0, p0, Laym;->n:Z

    if-nez v0, :cond_1

    return v1

    .line 918
    :cond_1
    iget-object v0, p0, Laym;->h:Lanl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lanl;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "BluetoothMusicService"

    const-string v1, "bind()"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lank;

    iget-object v1, p0, Laym;->a:Landroid/content/Context;

    iget-object v2, p0, Laym;->B:Lanm;

    invoke-direct {v0, v1, v2}, Lank;-><init>(Landroid/content/Context;Lanm;)V

    iput-object v0, p0, Laym;->i:Lank;

    .line 140
    new-instance v0, Lanl;

    iget-object v1, p0, Laym;->a:Landroid/content/Context;

    iget-object v2, p0, Laym;->C:Lann;

    invoke-direct {v0, v1, v2}, Lanl;-><init>(Landroid/content/Context;Lann;)V

    iput-object v0, p0, Laym;->h:Lanl;

    .line 141
    new-instance v0, Lanu;

    iget-object v1, p0, Laym;->a:Landroid/content/Context;

    iget-object v2, p0, Laym;->A:Lanq;

    invoke-direct {v0, v1, v2}, Lanu;-><init>(Landroid/content/Context;Lanq;)V

    iput-object v0, p0, Laym;->g:Lanu;

    .line 142
    new-instance v0, Lant;

    iget-object v1, p0, Laym;->a:Landroid/content/Context;

    iget-object v2, p0, Laym;->z:Lano;

    invoke-direct {v0, v1, v2}, Lant;-><init>(Landroid/content/Context;Lano;)V

    iput-object v0, p0, Laym;->j:Lant;

    .line 144
    iget-object v0, p0, Laym;->b:Lanw;

    iget-object v1, p0, Laym;->i:Lank;

    invoke-virtual {v0, v1}, Lanw;->a(Lanp;)V

    .line 145
    iget-object v0, p0, Laym;->b:Lanw;

    iget-object v1, p0, Laym;->h:Lanl;

    invoke-virtual {v0, v1}, Lanw;->a(Lanp;)V

    .line 146
    iget-object v0, p0, Laym;->b:Lanw;

    iget-object v1, p0, Laym;->g:Lanu;

    invoke-virtual {v0, v1}, Lanw;->a(Lanp;)V

    .line 147
    iget-object v0, p0, Laym;->b:Lanw;

    iget-object v1, p0, Laym;->j:Lant;

    invoke-virtual {v0, v1}, Lanw;->a(Lanp;)V

    .line 149
    iget-object v0, p0, Laym;->g:Lanu;

    iget-object v0, v0, Lanu;->d:Lans;

    new-instance v1, Laym$1;

    invoke-direct {v1, p0}, Laym$1;-><init>(Laym;)V

    invoke-virtual {v0, v1}, Lans;->a(Lans$a;)V

    .line 156
    iget-object v0, p0, Laym;->i:Lank;

    iget-object v0, v0, Lank;->d:Lans;

    new-instance v1, Laym$10;

    invoke-direct {v1, p0}, Laym$10;-><init>(Laym;)V

    invoke-virtual {v0, v1}, Lans;->a(Lans$a;)V

    .line 163
    iget-object v0, p0, Laym;->h:Lanl;

    iget-object v0, v0, Lanl;->d:Lans;

    new-instance v1, Laym$11;

    invoke-direct {v1, p0}, Laym$11;-><init>(Laym;)V

    invoke-virtual {v0, v1}, Lans;->a(Lans$a;)V

    .line 169
    iget-object v0, p0, Laym;->j:Lant;

    iget-object v0, v0, Lant;->d:Lans;

    new-instance v1, Laym$12;

    invoke-direct {v1, p0}, Laym$12;-><init>(Laym;)V

    invoke-virtual {v0, v1}, Lans;->a(Lans$a;)V

    .line 179
    iget-object v0, p0, Laym;->b:Lanw;

    invoke-virtual {v0}, Lanw;->b()V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 900
    iget-object v0, p0, Laym;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 901
    new-instance v2, Laym$7;

    invoke-direct {v2, p0, v1, p1, p2}, Laym$7;-><init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/i;J)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/g;)V
    .locals 1

    .line 864
    iget-object v0, p0, Laym;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/h;)V
    .locals 1

    .line 874
    iget-object v0, p0, Laym;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/i;)V
    .locals 1

    .line 884
    iget-object v0, p0, Laym;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Laym;->x:Layl;

    invoke-virtual {v0, p1}, Layl;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Laym;->q:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 3

    .line 744
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setA2dpVolume(F)Z

    move-result v0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setA2dpVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothMusicService"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public a(I)Z
    .locals 5

    .line 753
    iget-object v0, p0, Laym;->i:Lank;

    const-string v1, "]"

    const-string v2, "BluetoothMusicService"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 757
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->pauseBtRender()Z

    move-result p1

    const-string v0, "MUTE"

    goto :goto_0

    .line 760
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startBtRender()Z

    move-result p1

    const-string v0, "UNMUTE"

    :goto_0
    move v3, p1

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamMode(): mode = ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], result = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0}, Laym;->B()Z

    goto :goto_1

    .line 765
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStreamMode() called : mA2dp is null, result = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v3
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1016
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "bt_pause"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string p2, "bt_get_meta"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :sswitch_2
    const-string p2, "bt_prev"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string p2, "bt_play"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string p2, "bt_next"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string p2, "bt_get_position"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string p2, "bt_get_play_status"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    .line 1029
    :pswitch_0
    invoke-direct {p0}, Laym;->u()Z

    move-result p1

    return p1

    .line 1027
    :pswitch_1
    invoke-direct {p0}, Laym;->w()Z

    move-result p1

    return p1

    .line 1025
    :pswitch_2
    invoke-direct {p0}, Laym;->t()Z

    move-result p1

    return p1

    .line 1023
    :pswitch_3
    invoke-direct {p0}, Laym;->v()Z

    move-result p1

    return p1

    .line 1021
    :pswitch_4
    invoke-direct {p0}, Laym;->C()Z

    move-result p1

    return p1

    .line 1018
    :pswitch_5
    invoke-direct {p0}, Laym;->z()Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6555e5f9 -> :sswitch_6
        -0x4ef7141 -> :sswitch_5
        0xb831ac0 -> :sswitch_4
        0xb841b01 -> :sswitch_3
        0xb843200 -> :sswitch_2
        0x2c07469b -> :sswitch_1
        0x64fa8fc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 648
    iget-object p1, p0, Laym;->g:Lanu;

    if-eqz p1, :cond_1

    .line 650
    invoke-virtual {p1}, Lanu;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIncall getCallList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMusicService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nforetek/bt/aidl/NfHfpClientCall;

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iterate call list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->b()I

    move-result v0

    invoke-direct {p0, v0}, Laym;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 657
    invoke-direct {p0, p1}, Laym;->b(Z)V

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 663
    invoke-direct {p0, p1}, Laym;->b(Z)V

    return p1

    .line 666
    :cond_2
    iget-boolean p1, p0, Laym;->k:Z

    return p1
.end method

.method public b(I)V
    .locals 0

    .line 894
    iput p1, p0, Laym;->l:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Laym;->m:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Laym;->o:Z

    return v0
.end method

.method public d()Z
    .locals 3

    .line 690
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_play"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 3

    .line 719
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_next"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 3

    .line 731
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_prev"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 3

    .line 929
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_get_play_status"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    return-void
.end method

.method public i()I
    .locals 1

    .line 772
    iget v0, p0, Laym;->l:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 131
    iput-object p1, p0, Laym;->a:Landroid/content/Context;

    .line 132
    new-instance v0, Lanw;

    invoke-direct {v0, p1}, Lanw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laym;->b:Lanw;

    .line 133
    new-instance p1, Layl;

    invoke-direct {p1, p0}, Layl;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/d;)V

    iput-object p1, p0, Laym;->x:Layl;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Laym;->y:Z

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k_()Z
    .locals 3

    .line 707
    iget-object v0, p0, Laym;->x:Layl;

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const-string v2, "bt_pause"

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Layl;->a(Lcom/xiaopeng/musicradio/model/bluetooth/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Laym;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laym;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m()Z
    .locals 6

    .line 597
    iget-object v0, p0, Laym;->g:Lanu;

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {v0}, Lanu;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncall getCallList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothMusicService"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nforetek/bt/aidl/NfHfpClientCall;

    .line 603
    invoke-virtual {v1}, Lcom/nforetek/bt/aidl/NfHfpClientCall;->b()I

    move-result v3

    invoke-direct {p0, v3}, Laym;->e(I)Z

    move-result v3

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iterate call list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
