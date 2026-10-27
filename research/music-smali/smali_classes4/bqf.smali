.class public Lbqf;
.super Lbpy;
.source "NecessaryInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {p0}, Lbqf;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    .line 27
    invoke-virtual {p0}, Lbqf;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lbkm;->a(Landroid/app/Application;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lbqf;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lpp;->a(Landroid/app/Application;)V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x2

    .line 39
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

.method private g()V
    .locals 0

    .line 43
    invoke-static {}, Lbql;->a()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lbqf;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xp_music"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 18
    invoke-direct {p0}, Lbqf;->f()V

    .line 19
    invoke-direct {p0}, Lbqf;->d()V

    .line 20
    invoke-direct {p0}, Lbqf;->g()V

    .line 21
    invoke-direct {p0}, Lbqf;->h()V

    .line 22
    invoke-direct {p0}, Lbqf;->e()V

    return-void
.end method
