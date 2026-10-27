.class Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;
.super Ljava/lang/Object;
.source "SyncStatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

.field private final b:J

.field private final c:J

.field private d:Z

.field private e:J

.field private f:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;JI)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-wide p2, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b:J

    int-to-long p1, p4

    const-wide/32 p3, 0xea60

    mul-long/2addr p1, p3

    .line 129
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->c:J

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CheckLoginTask: mEffectiveTimeMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->c:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VipBuyViewPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;JILcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;JI)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->e:J

    .line 147
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->h()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    :cond_0
    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->d:Z

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;Z)Z

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->h()V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->a:Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->a(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->e()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 175
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b:J

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    invoke-virtual {v0, v1, v2, v3}, Laya;->a(JLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method private f()V
    .locals 4

    .line 197
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b:J

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    invoke-virtual {v0, v1, v2, v3}, Laya;->c(JLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method private g()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 225
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->g()V

    .line 226
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 227
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a$3;-><init>(Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;)V

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->f:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckLoginTask{mXpUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
