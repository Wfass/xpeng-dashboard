.class public Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MusicSmallPlayerSubViewCreator.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/h;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/h;"
    }
.end annotation


# instance fields
.field private mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSingleLrcLayout:Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;

.field private mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVipImg:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;
    .locals 1

    .line 46
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 51
    sget v0, Lbez$d;->image_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 52
    sget v0, Lbez$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 53
    sget v0, Lbez$d;->img_vip:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mVipImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 54
    sget v0, Lbez$d;->img_quality:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 55
    sget v0, Lbez$d;->image_mode:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 56
    sget v0, Lbez$d;->layout_lrc:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mSingleLrcLayout:Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 82
    sget v0, Lbez$f;->layout_small_music_player:I

    return v0
.end method

.method protected setListener()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator$2;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showDefault()V
    .locals 2

    .line 166
    sget v0, Lble$f;->tip_init_sub_title:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lble$f;->tip_init_title:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_120_allcycles:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    const v1, 0x3e23d70a    # 0.16f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mVipImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mSingleLrcLayout:Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/SingleLrcLayout;->refreshLrc(Ljava/lang/String;)V

    return-void
.end method

.method public updateLove(ZZ)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->bg_netease_love_120_selector:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->bg_love_120_selector:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method public updateMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 112
    sget p1, Lbez$c;->ic_120_allcycles:I

    goto :goto_0

    .line 109
    :cond_0
    sget p1, Lbez$c;->ic_120_random:I

    goto :goto_0

    .line 106
    :cond_1
    sget p1, Lbez$c;->ic_120_single:I

    goto :goto_0

    .line 103
    :cond_2
    sget p1, Lbez$c;->ic_120_allcycles:I

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mModeImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public updateQuality(IZZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_large_netease_standard:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_player_label_standard_qq:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->icon_dolby:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_large_netease_sq:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_player_label_sq_qq:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_large_netease_hq:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 136
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lbez$c;->ic_player_label_hq_qq:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mQualityImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method public updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateVip(Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mVipImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicSmallPlayerSubViewPresenter;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mVipImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_large_netease_vip:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;->mVipImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_player_label_vip_qq:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method
