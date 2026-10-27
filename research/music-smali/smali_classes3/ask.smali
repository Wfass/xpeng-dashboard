.class public Lask;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lask$e;,
        Lask$d;,
        Lask$c;,
        Lask$a;,
        Lask$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Laqt;",
            "Lask$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:Z

.field private f:Z

.field private g:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

.field private h:Lask$e;

.field private i:Lio/reactivex/disposables/Disposable;

.field private j:Lio/reactivex/disposables/Disposable;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private final o:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x2

    .line 64
    iput v0, p0, Lask;->b:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lask;->c:I

    .line 73
    new-instance v0, Lask$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lask$e;-><init>(Lask;Lask$1;)V

    iput-object v0, p0, Lask;->h:Lask$e;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lask;->k:Z

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lask;->l:Z

    .line 85
    new-instance v0, Lask$1;

    invoke-direct {v0, p0}, Lask$1;-><init>(Lask;)V

    iput-object v0, p0, Lask;->m:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lask$2;

    invoke-direct {v0, p0}, Lask$2;-><init>(Lask;)V

    iput-object v0, p0, Lask;->n:Ljava/lang/Runnable;

    .line 363
    new-instance v0, Lask$5;

    invoke-direct {v0, p0}, Lask$5;-><init>(Lask;)V

    iput-object v0, p0, Lask;->o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "need_resume"

    .line 205
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->d(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lask;->f:Z

    .line 206
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private A()Laqt;
    .locals 1

    .line 745
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    return-object v0
.end method

.method private B()Z
    .locals 1

    .line 749
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-direct {p0, v0}, Lask;->e(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a()Lask;
    .locals 1

    .line 211
    sget-object v0, Lask$b;->a:Lask;

    return-object v0
.end method

.method static synthetic a(Lask;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 59
    iput-object p1, p0, Lask;->i:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lask;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lask;I)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lask;->c(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lask;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lask;->e:Z

    return p1
.end method

.method static synthetic b(Lask;)Laqt;
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 2

    .line 427
    iget-object v0, p0, Lask;->i:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lask;->i:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose handle focusChange, current focus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lask;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lask;->b(I)V

    return-void
.end method

.method static synthetic b(Lask;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lask;->c(Z)V

    return-void
.end method

.method static synthetic c(Lask;I)I
    .locals 0

    .line 59
    iput p1, p0, Lask;->b:I

    return p1
.end method

.method static synthetic c(Lask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResumeWhenGainedAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    iput-boolean p1, p0, Lask;->f:Z

    const-string v0, "need_resume"

    .line 728
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private c(I)Z
    .locals 5

    .line 480
    invoke-direct {p0}, Lask;->B()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    return v2

    .line 486
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "AudioFocusModel"

    if-nez v0, :cond_1

    const-string p1, "return as power off"

    .line 487
    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    .line 493
    :cond_1
    invoke-virtual {p0}, Lask;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancel play, mFocusPaused\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lask;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSilence: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    .line 498
    :cond_2
    iget-boolean v0, p0, Lask;->f:Z

    if-nez v0, :cond_3

    const-string p1, "cancel play, mNeedResume: false"

    .line 499
    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_3
    const-string v0, "npm() called"

    .line 503
    invoke-static {v4, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_4

    .line 505
    iput-boolean v2, p0, Lask;->l:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 508
    iput-boolean v2, p0, Lask;->l:Z

    .line 509
    iget p1, p0, Lask;->b:I

    if-gez p1, :cond_6

    const-string p1, "cancel play, no focus and hand off play"

    .line 510
    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_5
    if-ne p1, v2, :cond_6

    .line 514
    iput-boolean v3, p0, Lask;->l:Z

    .line 517
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lask;->g()V

    .line 518
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$p;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$p;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 520
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "npm: ==="

    .line 521
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p1, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask$a;

    .line 523
    invoke-interface {v0}, Lask$a;->focusPlay()V

    goto :goto_1

    :cond_7
    const-string p1, "npm: igonplay"

    .line 526
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/model/car/a;->b(Z)V

    :cond_8
    return v2
.end method

.method static synthetic c(Lask;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lask;->l:Z

    return p1
.end method

.method static synthetic d(Lask;I)I
    .locals 0

    .line 59
    iput p1, p0, Lask;->c:I

    return p1
.end method

.method static synthetic d(Lask;)Lask$e;
    .locals 0

    .line 59
    iget-object p0, p0, Lask;->h:Lask$e;

    return-object p0
.end method

.method private d(I)V
    .locals 2

    const-string v0, "AudioFocusModel"

    const-string v1, "npm() called"

    .line 563
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 565
    invoke-direct {p0}, Lask;->y()V

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0, v0}, Lask;->c(Z)V

    .line 569
    :goto_0
    invoke-virtual {p0}, Lask;->j()V

    return-void
.end method

.method static synthetic d(Lask;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lask;->k:Z

    return p1
.end method

.method private e(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic e(Lask;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lask;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lask;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->w()V

    return-void
.end method

.method static synthetic h(Lask;)I
    .locals 0

    .line 59
    iget p0, p0, Lask;->c:I

    return p0
.end method

.method static synthetic i(Lask;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lask;->l:Z

    return p0
.end method

.method static synthetic j(Lask;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lask;->e:Z

    return p0
.end method

.method static synthetic k(Lask;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->p()V

    return-void
.end method

.method static synthetic l(Lask;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->o()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 260
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 261
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v0}, Laqt;->dispatchInfoEvent()V

    :cond_0
    return-void
.end method

.method static synthetic m(Lask;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->u()V

    return-void
.end method

.method private n()Z
    .locals 2

    .line 269
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lbfe;->isInCall()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic n(Lask;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->n()Z

    move-result p0

    return p0
.end method

.method private o()V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusLoss, isInCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$t;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$t;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lask;->k:Z

    .line 284
    invoke-direct {p0}, Lask;->z()V

    .line 285
    invoke-direct {p0}, Lask;->w()V

    .line 286
    iget v0, p0, Lask;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 289
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.carcontrol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.btphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n()V

    .line 295
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->resetAudioInfoRecord()V

    return-void
.end method

.method static synthetic o(Lask;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lask;->x()V

    return-void
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lask;->k:Z

    .line 300
    invoke-direct {p0}, Lask;->t()V

    .line 302
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Laqs;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AudioFocusModel"

    const-string v1, "afc: = focus"

    .line 304
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lask;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->b(Ljava/lang/Runnable;)V

    .line 309
    iget-object v0, p0, Lask;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q()Z
    .locals 3

    .line 314
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->D()Z

    move-result v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCoConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", JoyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v2

    invoke-virtual {v2}, Layg;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioFocusModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private r()Z
    .locals 3

    .line 320
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInCodriver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioFocusModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private s()Z
    .locals 1

    .line 326
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-direct {p0, v0}, Lask;->a(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private t()V
    .locals 1

    .line 353
    iget-object v0, p0, Lask;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lask;->d:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .line 401
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    .line 402
    iget v1, p0, Lask;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lask;->v()V

    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .line 411
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 413
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v0, "AudioFocusModel"

    const-string v1, "vdd: current state is pause====="

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laqt;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lask$a;

    invoke-interface {v2}, Lask$a;->lowerVolume()V

    goto :goto_0

    .line 421
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqt;

    iget-object v3, p0, Lask;->h:Lask$e;

    invoke-virtual {v3}, Lask$e;->a()F

    move-result v3

    invoke-interface {v2, v3}, Laqt;->setVolume(F)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private w()V
    .locals 2

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lask;->e:Z

    const-string v0, "AudioFocusModel"

    const-string v1, "pf() called"

    .line 545
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 546
    invoke-direct {p0, v0}, Lask;->d(I)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 553
    invoke-direct {p0}, Lask;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "AudioFocusModel"

    const-string v1, "pv() called"

    .line 558
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, v0}, Lask;->d(I)V

    return-void
.end method

.method private y()V
    .locals 1

    .line 576
    iget-boolean v0, p0, Lask;->f:Z

    if-nez v0, :cond_1

    .line 577
    invoke-direct {p0}, Lask;->A()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-direct {p0, v0}, Lask;->e(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lask;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0, v0}, Lask;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 732
    iget-object v0, p0, Lask;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 733
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Laqt;)V
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAudioFocusChangeListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Laqt;Lask$a;)V
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioFocusChangeListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", @model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lask$c;)V
    .locals 1

    .line 799
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0, p1}, Lask$e;->a(Lask$c;)V

    return-void
.end method

.method public a(Lask$d;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0, p1}, Lask$e;->a(Lask$d;)V

    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 455
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " iscall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isCodriver:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isConnect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocusModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lask;->r()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lask;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 460
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 462
    :cond_2
    invoke-direct {p0}, Lask;->n()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public b()V
    .locals 4

    .line 215
    iget v0, p0, Lask;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->a()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lask;->o:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioFocusModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 222
    invoke-direct {p0, v0}, Lask;->b(I)V

    .line 223
    iput v0, p0, Lask;->b:I

    .line 224
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lask;->u()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ras:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 231
    invoke-direct {p0}, Lask;->o()V

    .line 234
    :cond_2
    :goto_0
    iget-object v0, p0, Lask;->d:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x5

    .line 235
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 236
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lask$3;

    invoke-direct {v1, p0}, Lask$3;-><init>(Lask;)V

    new-instance v2, Lask$4;

    invoke-direct {v2, p0}, Lask$4;-><init>(Lask;)V

    .line 237
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lask;->d:Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 250
    :cond_3
    invoke-direct {p0, v1}, Lask;->b(I)V

    .line 251
    iput v1, p0, Lask;->b:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lask;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lask;->m()V

    .line 254
    invoke-direct {p0}, Lask;->p()V

    .line 256
    :cond_4
    :goto_1
    iget v0, p0, Lask;->b:I

    iput v0, p0, Lask;->c:I

    return-void
.end method

.method public b(Lask$c;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0, p1}, Lask$e;->b(Lask$c;)V

    return-void
.end method

.method public b(Lask$d;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0, p1}, Lask$e;->b(Lask$d;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 718
    invoke-direct {p0, p1}, Lask;->c(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lask;->k:Z

    return v0
.end method

.method public d()Z
    .locals 2

    .line 444
    iget v0, p0, Lask;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lask;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

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

.method public f()Z
    .locals 3

    .line 468
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotPlayable isCodriver:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isConnect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocusModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lask;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lask;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 475
    :cond_1
    invoke-direct {p0}, Lask;->n()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .line 534
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0}, Lask$e;->d()V

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lask;->f:Z

    return v0
.end method

.method public j()V
    .locals 4

    .line 786
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0}, Lask$e;->d()V

    .line 787
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ag;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ag;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    const-string v0, "AudioFocusModel"

    const-string v1, "forcePauseAll start"

    .line 788
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lask$a;

    const-string v3, "AudioFocusChangeListener focusPause call"

    .line 790
    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    invoke-interface {v2}, Lask$a;->focusPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 825
    iget-object v0, p0, Lask;->h:Lask$e;

    invoke-virtual {v0}, Lask$e;->e()V

    .line 826
    iget-object v0, p0, Lask;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqt;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Laqt;->setVolume(F)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 832
    iget v0, p0, Lask;->b:I

    return v0
.end method

.method public onCallStateChanged(Lasa$f;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 597
    invoke-virtual {p1}, Lasa$f;->a()Z

    move-result p1

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "csc:isInCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mFocusPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lask;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mFocusType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lask;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isCodriver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 603
    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 604
    invoke-direct {p0}, Lask;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lask;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-direct {p0}, Lask;->y()V

    .line 608
    invoke-virtual {p0}, Lask;->j()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 611
    invoke-direct {p0, p1}, Lask;->c(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDriverJoyModeUpdate(Lcom/xiaopeng/musicradio/event/common/CommonEvent$o;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 679
    invoke-direct {p0}, Lask;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 680
    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->d()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 681
    invoke-direct {p0, v0}, Lask;->c(I)Z

    .line 682
    invoke-direct {p0}, Lask;->v()V

    goto :goto_0

    .line 684
    :cond_0
    invoke-direct {p0, v0}, Lask;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onIGChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 691
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 692
    iput-boolean p1, p0, Lask;->f:Z

    :cond_0
    return-void
.end method

.method public onLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 588
    iget-object p1, p0, Lask;->h:Lask$e;

    invoke-virtual {p1}, Lask$e;->d()V

    .line 589
    iget-object p1, p0, Lask;->h:Lask$e;

    invoke-virtual {p1}, Lask$e;->c()V

    .line 590
    iget-object p1, p0, Lask;->h:Lask$e;

    invoke-virtual {p1}, Lask$e;->e()V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 698
    iget-object v0, p0, Lask;->g:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lask;->g:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state ---- mLastFocusType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lask;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,audioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iput-object p1, p0, Lask;->g:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    .line 706
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 707
    iget-object p1, p0, Lask;->n:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->b(Ljava/lang/Runnable;)V

    .line 708
    iget-object p1, p0, Lask;->n:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onShareDisplayId(Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 620
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;->a()I

    move-result p1

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShareDisplayId:displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lask;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 622
    invoke-direct {p0}, Lask;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 624
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v2, Lbfe;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 626
    invoke-interface {v0, p1}, Lbfe;->isInCall(Z)Z

    move-result p1

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShareDisplayId finalIsInCall:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", JoyMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layg;->a()Layg;

    move-result-object v2

    invoke-virtual {v2}, Layg;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 631
    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 634
    :cond_1
    invoke-direct {p0}, Lask;->y()V

    .line 635
    invoke-virtual {p0}, Lask;->j()V

    :cond_2
    return-void
.end method

.method public onVolumeChanged(Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 645
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;->a()I

    move-result p1

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolumeChanged muteFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-direct {p0}, Lask;->z()V

    .line 648
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    .line 649
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lask$6;

    invoke-direct {v1, p0, p1}, Lask$6;-><init>(Lask;I)V

    .line 650
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lask;->j:Lio/reactivex/disposables/Disposable;

    return-void
.end method
