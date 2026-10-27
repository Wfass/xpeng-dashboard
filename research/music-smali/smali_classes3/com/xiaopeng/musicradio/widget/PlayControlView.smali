.class public Lcom/xiaopeng/musicradio/widget/PlayControlView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "PlayControlView.java"


# instance fields
.field private mPlayState:I

.field private mPlayStateIv:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 39
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->shape_common_play_icon_mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setBackgroundResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->layout_play_control_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->control_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/PlayControlView;->mPlayStateIv:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method


# virtual methods
.method public setPlayState(I)V
    .locals 2

    .line 45
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/PlayControlView;->mPlayState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 46
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/PlayControlView;->mPlayState:I

    const/4 p1, 0x1

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/PlayControlView;->mPlayState:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/PlayControlView;->mPlayStateIv:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method
