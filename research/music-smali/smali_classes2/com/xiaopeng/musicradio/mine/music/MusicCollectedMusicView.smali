.class public Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;
.super Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;
.source "MusicCollectedMusicView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;
    .locals 3

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->mAdapter:Latb;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->mAdapter:Latb;

    invoke-virtual {p1}, Latb;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->mAdapter:Latb;

    invoke-virtual {p1}, Latb;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
