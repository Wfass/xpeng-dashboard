.class public Lcom/xiaopeng/musicradio/music/player/view/BtMusicSmallPlayerSubViewCreator;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "BtMusicSmallPlayerSubViewCreator.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/b;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/BtMusicSmallPlayerSubViewPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/BtMusicSmallPlayerSubViewCreator;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/BtMusicSmallPlayerSubViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/BtMusicSmallPlayerSubViewPresenter;
    .locals 1

    .line 31
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/BtMusicSmallPlayerSubViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/BtMusicSmallPlayerSubViewPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 0

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 49
    sget v0, Lbez$f;->layout_small_bt_music_player:I

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

.method public showDefault()V
    .locals 0

    return-void
.end method
