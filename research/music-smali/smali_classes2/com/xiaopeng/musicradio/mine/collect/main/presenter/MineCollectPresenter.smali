.class public Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "MineCollectPresenter.java"

# interfaces
.implements Laxs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;",
        ">;",
        "Laxs$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 22
    invoke-static {}, Lata;->a()Lata;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChecked:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineCollectPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateLoadingStatus(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 27
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    invoke-virtual {v0}, Lata;->b()V

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 29
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lasz;->a()Lasz;

    move-result-object p1

    invoke-virtual {p1, p0}, Lasz;->a(Laxs$a;)V

    const/4 p1, 0x2

    .line 33
    invoke-static {p1}, Laxu;->e(I)V

    .line 34
    invoke-static {}, Laxu;->f()V

    .line 35
    invoke-static {}, Laxw;->e()V

    .line 36
    invoke-static {}, Laxv;->d()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MineCollectPresenter"

    const-string v0, "onDestroy"

    .line 42
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lasz;->a()Lasz;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lasz;->a(Laxs$a;)V

    return-void
.end method
