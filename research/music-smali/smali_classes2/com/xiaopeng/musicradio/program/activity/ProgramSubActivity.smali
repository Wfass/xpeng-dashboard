.class public Lcom/xiaopeng/musicradio/program/activity/ProgramSubActivity;
.super Lcom/xiaopeng/musicradio/widget/BaseSubActivity;
.source "ProgramSubActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/activity/sub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/BaseSubActivity<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/program/activity/presenter/ProgramSubPresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/activity/ProgramSubActivity;->createPresenter()Lcom/xiaopeng/musicradio/program/activity/presenter/ProgramSubPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/activity/presenter/ProgramSubPresenter;
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/musicradio/program/activity/presenter/ProgramSubPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/activity/presenter/ProgramSubPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/activity/ProgramSubActivity;->onBackPressed()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 0

    return-void
.end method
