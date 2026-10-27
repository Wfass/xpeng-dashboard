.class public Lcom/xiaopeng/musicradio/model/bluetooth/j;
.super Ljava/lang/Object;
.source "PositionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/bluetooth/j$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:Lio/reactivex/disposables/Disposable;

.field private f:Lcom/xiaopeng/musicradio/model/bluetooth/j$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a:J

    .line 27
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b:J

    .line 28
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->c:J

    .line 29
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d:J

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/j;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/j;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/j;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->e:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/bluetooth/j;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/j;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->f:Lcom/xiaopeng/musicradio/model/bluetooth/j$a;

    if-eqz v0, :cond_0

    .line 109
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a:J

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/j$a;->a(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d()V

    return-void
.end method

.method public a(JIJ)V
    .locals 4

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 46
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b:J

    cmp-long p3, v0, p1

    const-wide/16 v0, 0x0

    if-nez p3, :cond_1

    cmp-long p3, p4, v0

    if-lez p3, :cond_1

    .line 47
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d:J

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f40

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->c()V

    goto :goto_0

    .line 54
    :cond_1
    new-instance p3, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$u;-><init>()V

    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 55
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->d:J

    .line 58
    :cond_2
    :goto_0
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b:J

    .line 59
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a:J

    .line 60
    iput-wide p4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->c:J

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/j$a;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->f:Lcom/xiaopeng/musicradio/model/bluetooth/j$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-string v0, "PositionManager"

    const-string v1, "cancel called"

    .line 80
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 115
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$v;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$v;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
