.class public Lcom/xiaopeng/musicradio/vip/buying/presenter/a;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "VipBuyingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Lbsm;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->b:Z

    return p1
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyingPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;-><init>(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v0, "getAccountInfo:enter=="

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->b:Z

    .line 41
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;-><init>(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lbsy;->a(Ljava/lang/String;ILbsz$b;)V

    return-void
.end method
