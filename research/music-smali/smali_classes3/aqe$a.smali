.class Laqe$a;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laqe;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Laqe;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Laqe$a;->a:Laqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Laqe$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Laqe;Ljava/lang/String;Laqe$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2}, Laqe$a;-><init>(Laqe;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laqe$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 210
    iput-object p1, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Laqe$a;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Laqe$a;->b()V

    return-void
.end method

.method static synthetic a(Laqe$a;Ljava/lang/String;)Z
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Laqe$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 233
    iget-object v0, p0, Laqe$a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 2

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laqe$a;->d:J

    .line 238
    invoke-direct {p0}, Laqe$a;->f()V

    return-void
.end method

.method static synthetic b(Laqe$a;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Laqe$a;->c()V

    return-void
.end method

.method static synthetic c(Laqe$a;)Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Laqe$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 242
    iget-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Laqe$a;->c:Z

    return-void
.end method

.method private d()V
    .locals 6

    .line 250
    iget-boolean v0, p0, Laqe$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Laqe$a;->a:Laqe;

    invoke-static {v0, v1}, Laqe;->b(Laqe;Z)V

    return-void

    .line 254
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Laqe$a;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 256
    iget-object v0, p0, Laqe$a;->a:Laqe;

    iget-object v1, p0, Laqe$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laqe;->a(Laqe;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Laqe$a;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)V

    return-void

    .line 262
    :cond_2
    iget-object v0, p0, Laqe$a;->a:Laqe;

    invoke-static {v0, v1}, Laqe;->c(Laqe;Z)Z

    .line 263
    invoke-direct {p0}, Laqe$a;->f()V

    .line 264
    iget-object v0, p0, Laqe$a;->b:Ljava/lang/String;

    new-instance v1, Laqe$a$1;

    new-instance v2, Laqe$a$2;

    invoke-direct {v2, p0}, Laqe$a$2;-><init>(Laqe$a;)V

    invoke-virtual {v2}, Laqe$a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Laqe$a$1;-><init>(Laqe$a;Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1}, Lapz;->a(Ljava/lang/String;Lapz$a;)V

    return-void
.end method

.method static synthetic d(Laqe$a;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Laqe$a;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 297
    iget-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method static synthetic e(Laqe$a;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Laqe$a;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 303
    invoke-direct {p0}, Laqe$a;->e()V

    .line 304
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 305
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Laqe$a$3;

    invoke-direct {v1, p0}, Laqe$a$3;-><init>(Laqe$a;)V

    .line 306
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Laqe$a;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Laqe$a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckLoginTask{mXpCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqe$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqe$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
