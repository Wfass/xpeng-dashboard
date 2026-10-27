.class Laqk$a;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laqk;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:Z

.field private e:J

.field private f:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Laqk;Ljava/lang/String;I)V
    .locals 2

    .line 210
    iput-object p1, p0, Laqk$a;->a:Laqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Laqk$a;->b:Ljava/lang/String;

    int-to-long p1, p3

    const-wide/32 v0, 0xea60

    mul-long/2addr p1, v0

    .line 212
    iput-wide p1, p0, Laqk$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Laqk;Ljava/lang/String;ILaqk$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Laqk$a;-><init>(Laqk;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Laqk$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 203
    iput-object p1, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Laqk$a;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Laqk$a;->b()V

    return-void
.end method

.method static synthetic a(Laqk$a;Ljava/lang/String;)Z
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Laqk$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Laqk$a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 2

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laqk$a;->e:J

    .line 233
    invoke-direct {p0}, Laqk$a;->f()V

    return-void
.end method

.method static synthetic b(Laqk$a;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Laqk$a;->c()V

    return-void
.end method

.method static synthetic c(Laqk$a;)Ljava/lang/String;
    .locals 0

    .line 203
    iget-object p0, p0, Laqk$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 237
    iget-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Laqk$a;->d:Z

    return-void
.end method

.method private d()V
    .locals 4

    .line 245
    iget-boolean v0, p0, Laqk$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laqk$a;->e:J

    sub-long/2addr v0, v2

    .line 249
    iget-wide v2, p0, Laqk$a;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 250
    iget-object v0, p0, Laqk$a;->a:Laqk;

    iget-object v1, p0, Laqk$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laqk;->a(Laqk;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Laqk$a;->a:Laqk;

    invoke-static {v0}, Laqk;->a(Laqk;)V

    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Laqk$a;->a:Laqk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laqk;->b(Laqk;Z)Z

    .line 257
    invoke-direct {p0}, Laqk$a;->f()V

    .line 259
    iget-object v0, p0, Laqk$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lapy;->a(Landroid/content/Context;)Lapx;

    move-result-object v1

    invoke-virtual {v1}, Lapx;->a()J

    move-result-wide v1

    new-instance v3, Laqk$a$1;

    invoke-direct {v3, p0}, Laqk$a$1;-><init>(Laqk$a;)V

    invoke-static {v0, v1, v2, v3}, Laqi;->a(Ljava/lang/String;JLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method static synthetic d(Laqk$a;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Laqk$a;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 296
    iget-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method static synthetic e(Laqk$a;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Laqk$a;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 302
    invoke-direct {p0}, Laqk$a;->e()V

    .line 303
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 304
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Laqk$a$2;

    invoke-direct {v1, p0}, Laqk$a$2;-><init>(Laqk$a;)V

    .line 305
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Laqk$a;->f:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Laqk$a;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckLoginTask{mAuthCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqk$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Laqk$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
