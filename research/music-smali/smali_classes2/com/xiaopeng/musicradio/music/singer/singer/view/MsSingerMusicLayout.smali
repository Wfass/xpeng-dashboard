.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsSingerMusicLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerMusicLayout"


# instance fields
.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 42
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 59
    sget v0, Lbez$f;->music_layout_singer_music:I

    return v0
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerMusicLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
