.class public Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;
.super Landroid/widget/FrameLayout;
.source "SmallMusicLrcLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/d;
.implements Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;
.implements Lcom/xiaopeng/musicradio/playercomponent/small/view/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicLrcLayout"


# instance fields
.field private mCardView:Landroidx/cardview/widget/CardView;

.field private mDefaultBg:Lcom/xiaopeng/xui/view/XView;

.field private mLrcLoading:Z

.field private mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

.field private mPosition:I

.field private mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getContentViewId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->findView()V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->setListener()V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 87
    sget v0, Lbez$d;->lrcview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    .line 88
    sget v0, Lbez$d;->card_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mCardView:Landroidx/cardview/widget/CardView;

    .line 89
    sget v0, Lbez$d;->img_album_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 145
    sget v0, Lbez$f;->layout_small_lrc:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->onCreate(Landroidx/lifecycle/n;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onDownloadLrcStart()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_searching_lrc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onLrcLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->onNoLrc()V

    :cond_1
    return-void
.end method

.method public onLrcLoading()V
    .locals 3

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_searching_lrc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onNoLrc()V
    .locals 3

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$g;->main_lrc_no:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public refreshBg(Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    return-void
.end method

.method public refreshBgColor(I)V
    .locals 0

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    return-void
.end method

.method public refreshLrcView(Ljava/lang/String;I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 168
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    if-nez p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lbez$g;->main_searching_lrc:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lbez$g;->main_lrc_no:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setLrcLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->updateIndex(I)V

    :goto_0
    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public refreshType(IIZ)V
    .locals 0

    return-void
.end method

.method public reset(I)V
    .locals 2

    const-string v0, "MusicLrcLayout"

    const-string v1, "reset: ====== "

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    sget p1, Lble$c;->img_cd_empty:I

    goto :goto_0

    :cond_0
    sget p1, Lble$c;->img_cd_netease_empty:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->setDefaultAlbum(I)V

    return-void
.end method

.method public setDefaultAlbum(I)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOnLoadLrcListener(Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPresenter:Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicLrcPresenter;->c()V

    :cond_0
    return-void
.end method

.method public updateIndex(I)V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPosition:I

    if-le v0, p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b(I)V

    .line 158
    :goto_0
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->mPosition:I

    return-void
.end method
