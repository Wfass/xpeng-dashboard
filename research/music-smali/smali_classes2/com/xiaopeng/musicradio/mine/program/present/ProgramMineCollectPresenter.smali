.class public Lcom/xiaopeng/musicradio/mine/program/present/ProgramMineCollectPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "ProgramMineCollectPresenter.java"

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

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 19
    invoke-static {}, Lata;->a()Lata;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChecked:state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMineCollectPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/present/ProgramMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/program/present/ProgramMineCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/main/view/a;->updateLoadingStatus(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 24
    invoke-static {}, Lata;->a()Lata;

    move-result-object v0

    invoke-virtual {v0}, Lata;->d()V

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxa;->a(Laxs$a;)V

    .line 29
    invoke-static {}, Laxw;->e()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "ProgramMineCollectPresenter"

    const-string v0, "onDestroy"

    .line 35
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Laxa;->a()Laxa;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laxa;->a(Laxs$a;)V

    return-void
.end method
