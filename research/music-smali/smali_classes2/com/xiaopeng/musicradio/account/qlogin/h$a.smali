.class Lcom/xiaopeng/musicradio/account/qlogin/h$a;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/account/qlogin/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/h;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:Z

.field private f:J

.field private g:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    int-to-long p1, p4

    const-wide/32 p3, 0xea60

    mul-long/2addr p1, p3

    .line 229
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d:J

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CheckLoginTask: mEffectiveTimeMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QQrCodePresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/musicradio/account/qlogin/h$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/h$a;Ljava/lang/String;)Z
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 2

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->f:J

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->f()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e:Z

    return-void
.end method

.method private d()V
    .locals 4

    .line 263
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->f:J

    sub-long/2addr v0, v2

    .line 267
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(Lcom/xiaopeng/musicradio/account/qlogin/h;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b(Lcom/xiaopeng/musicradio/account/qlogin/h;)V

    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b(Lcom/xiaopeng/musicradio/account/qlogin/h;Z)Z

    .line 275
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->f()V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->b()I

    move-result v2

    new-instance v3, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/account/qlogin/a;->a(Ljava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 317
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e()V

    .line 318
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 319
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/account/qlogin/h$a$2;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/h$a;)V

    .line 320
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckLoginTask{mAuthCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/h$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
