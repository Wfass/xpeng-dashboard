.class public abstract Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MineBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/datalist/n;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/n;

    .line 11
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/datalist/n;->isShowing()Z

    move-result v0

    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
