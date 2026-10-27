.class public Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SelectMenuItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lbor;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;->b:I

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "SelectMenuItemPresenter"

    const-string v0, "onCreateView"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$n;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;->b:I

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbor;

    invoke-interface {p1}, Lbor;->updateDownState()V

    :cond_0
    return-void
.end method
