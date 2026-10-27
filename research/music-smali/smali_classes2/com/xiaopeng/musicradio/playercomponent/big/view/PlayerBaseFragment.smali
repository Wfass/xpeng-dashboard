.class public abstract Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "PlayerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract backToMain()V
.end method

.method public abstract isBackToMain()Z
.end method

.method public onDestroy()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
