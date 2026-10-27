.class public Lbqg;
.super Lbpy;
.source "PlayerInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbqg;->e()V

    .line 24
    invoke-direct {p0}, Lbqg;->f()V

    .line 25
    invoke-direct {p0}, Lbqg;->g()V

    .line 26
    invoke-direct {p0}, Lbqg;->h()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;

    new-instance v1, Larw;

    invoke-direct {v1}, Larw;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Larz;

    invoke-direct {v1}, Larz;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->a([Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;)V

    return-void
.end method

.method private f()V
    .locals 0

    .line 34
    invoke-static {}, Lbql;->a()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 38
    invoke-static {}, Lbey;->a()Lbey;

    move-result-object v0

    invoke-virtual {v0}, Lbey;->b()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lbqg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isRunOnMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbqg;->d()V

    return-void
.end method
