.class public Lbqi;
.super Lbpy;
.source "ViewPreLoadTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lbqi;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->initApp(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->getInstance()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    move-result-object v0

    invoke-virtual {p0}, Lbqi;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->init(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->getInstance()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$e;->layout_xos_small_player:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->addPreLoadXml(II)V

    .line 24
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->getInstance()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->startPreLoad()V

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

    .line 12
    invoke-direct {p0}, Lbqi;->d()V

    return-void
.end method
