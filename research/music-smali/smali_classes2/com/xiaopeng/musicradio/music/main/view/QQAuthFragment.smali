.class public Lcom/xiaopeng/musicradio/music/main/view/QQAuthFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "QQAuthFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/qq_auth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Lcom/xiaopeng/musicradio/music/rank/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QQAuthFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 0

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 18
    sget v0, Lbez$f;->fragment_qq_auth:I

    return v0
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
