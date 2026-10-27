.class public Lcom/xiaopeng/musicradio/search/SearchInit;
.super Lbex;
.source "SearchInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchInit"


# instance fields
.field private mUtilInit:Lcom/xiaopeng/musicradio/SearchUtilInit;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lbex;-><init>()V

    .line 21
    new-instance v0, Lcom/xiaopeng/musicradio/SearchUtilInit;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/SearchUtilInit;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/SearchInit;->mUtilInit:Lcom/xiaopeng/musicradio/SearchUtilInit;

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 0

    return-void
.end method

.method public initNow()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/SearchInit;->mUtilInit:Lcom/xiaopeng/musicradio/SearchUtilInit;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/SearchUtilInit;->initNow()V

    return-void
.end method

.method public onDialogShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "SearchInit"

    const-string v1, "onDialogShow==========="

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$av;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lbon;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 0

    return-void
.end method
