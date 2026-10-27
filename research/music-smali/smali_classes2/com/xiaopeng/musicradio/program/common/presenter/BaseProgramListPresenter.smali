.class public abstract Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.source "BaseProgramListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/program/common/view/a;",
        ">",
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter<",
        "TUIInterface;>;"
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public d()V
    .locals 4

    .line 16
    iget v0, p0, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->b:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->c:I

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->a(I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/common/view/a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramListPresenter;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/common/view/a;->showLoading(ZII)V

    :cond_1
    :goto_0
    return-void
.end method
