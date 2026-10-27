.class public Lcom/xiaopeng/musicradio/widget/PlayStateWidget;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "PlayStateWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayStateWidget"


# instance fields
.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mPlayState:I

.field private mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field private mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->widget_play_state:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->lottie_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mLoadingView:Landroid/widget/FrameLayout;

    .line 54
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->av_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 55
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->shadow_layer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method private updateStatus()V
    .locals 3

    .line 110
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getPlayState()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->updateStatus()V

    return-void
.end method

.method public updatePlayState(IZ)V
    .locals 2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 63
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 64
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 65
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 66
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    goto :goto_0

    .line 68
    :cond_0
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    if-ne p2, p1, :cond_1

    return-void

    .line 71
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayState:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mShadowIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mPlayingIndicatorView:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
