.class public Lcom/xiaopeng/musicradio/mine/radio/present/NetradioMineHistoryPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "NetradioMineHistoryPresenter.java"

# interfaces
.implements Laxs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;",
        ">;",
        "Laxs$a;"
    }
.end annotation


# instance fields
.field private b:Laxs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 20
    invoke-static {}, Laxo;->a()Laxo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/radio/present/NetradioMineHistoryPresenter;->b:Laxs;

    .line 21
    invoke-static {}, Lawl;->a()Lawl;

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

    const-string v1, "MineHistoryPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/present/NetradioMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/radio/present/NetradioMineHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/main/view/a;->updateLoadingStatus(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 26
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    invoke-virtual {v0}, Lawl;->e()V

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 28
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Laxo;->a()Laxo;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxo;->a(Laxs$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MineHistoryPresenter"

    const-string v0, "onDestroy"

    .line 35
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Laxo;->a()Laxo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laxo;->a(Laxs$a;)V

    return-void
.end method
