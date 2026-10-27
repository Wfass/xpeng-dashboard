.class public Lbpv;
.super Ljava/lang/Object;
.source "AppStartUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpv$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lcom/xiaopeng/appstart/core/util/DebugConstantUtil;->setNeedOutLogToFile(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lbpv$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbpv;-><init>()V

    return-void
.end method

.method public static a()Lbpv;
    .locals 1

    .line 23
    invoke-static {}, Lbpv$a;->a()Lbpv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->create()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setShowLog(Z)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setContext(Landroid/content/Context;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqh;

    invoke-direct {v1}, Lbqh;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqi;

    invoke-direct {v1}, Lbqi;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    return-void
.end method

.method public c()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->create()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setShowLog(Z)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 46
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setContext(Landroid/content/Context;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbpx;

    invoke-direct {v1}, Lbpx;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqf;

    invoke-direct {v1}, Lbqf;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqe;

    invoke-direct {v1}, Lbqe;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqa;

    invoke-direct {v1}, Lbqa;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqc;

    invoke-direct {v1}, Lbqc;-><init>()V

    .line 51
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqd;

    invoke-direct {v1}, Lbqd;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbpz;

    invoke-direct {v1}, Lbpz;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqb;

    invoke-direct {v1}, Lbqb;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbpw;

    invoke-direct {v1}, Lbpw;-><init>()V

    .line 55
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    return-void
.end method

.method public d()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->create()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setShowLog(Z)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 62
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->setContext(Landroid/content/Context;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    new-instance v1, Lbqg;

    invoke-direct {v1}, Lbqg;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->addAppStartTask(Lcom/xiaopeng/appstart/core/AppStartTask;)Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    return-void
.end method
