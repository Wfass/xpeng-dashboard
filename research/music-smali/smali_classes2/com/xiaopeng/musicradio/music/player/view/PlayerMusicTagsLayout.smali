.class public Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "PlayerMusicTagsLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/i;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/i;"
    }
.end annotation


# instance fields
.field private mDolbyIcon:Landroid/widget/ImageView;

.field private mQualityGuidePopWindow:Lbhl;

.field private mQualityLayout:Landroid/widget/FrameLayout;

.field private mSingerMaxWidth:I

.field private mSingerTxt:Landroid/widget/TextView;

.field private mSongQualityChooseDialog:Lbjm;

.field private mSongQualityLabel:Landroid/widget/TextView;

.field private mTagMaxWidth:I

.field private mVipLabel:Landroid/widget/TextView;

.field private mVipLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x104

    .line 62
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x104

    .line 62
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerMaxWidth:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x104

    .line 62
    iput p3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerMaxWidth:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->showSongQualityChooseDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)Lbhl;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;Lbhl;)Lbhl;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;Lbjm;)Lbjm;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    return-object p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    sget-object v0, Lbez$i;->MusicTagsLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    sget p2, Lbez$i;->MusicTagsLayout_tagMaxWidth:I

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mTagMaxWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mTagMaxWidth:I

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private showSongQualityChooseDialog()V
    .locals 3

    .line 276
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lbjm;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lbjm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    .line 280
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    new-instance v2, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    invoke-virtual {v1, v2}, Lbjm;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    invoke-virtual {v1, v0}, Lbjm;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    invoke-virtual {v0}, Lbjm;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XDialogUtils;->setScreenId(Landroid/app/Dialog;I)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    invoke-virtual {v0}, Lbjm;->show()V

    :cond_1
    return-void
.end method

.method private showVipLabel()V
    .locals 2

    .line 299
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;-><init>()V

    return-object v0
.end method

.method public dismissGuideWhenChangeAudio()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbhl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    invoke-virtual {v0}, Lbhl;->dismiss()V

    :cond_0
    return-void
.end method

.method protected findView()V
    .locals 1

    .line 106
    sget v0, Lbez$d;->tv_label_song_quality1:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    .line 107
    sget v0, Lbez$d;->tv_label_vip1:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLabel:Landroid/widget/TextView;

    .line 108
    sget v0, Lbez$d;->layout_vip:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    .line 109
    sget v0, Lbez$d;->layout_quality:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    .line 110
    sget v0, Lbez$d;->icon_dolby:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mDolbyIcon:Landroid/widget/ImageView;

    .line 111
    sget v0, Lbez$d;->tv_singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerTxt:Landroid/widget/TextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 146
    sget v0, Lbez$f;->layout_player_music_tags:I

    return v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getContentViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 89
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->addView(Landroid/view/View;)V

    .line 93
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerMusicTagsLayout Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerMusicTagsLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onRefreshQuality()V
    .locals 5

    .line 195
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mDolbyIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_8

    .line 204
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_9

    .line 206
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    .line 207
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->c()Z

    move-result v3

    if-nez v3, :cond_9

    .line 208
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    :goto_1
    if-ne v0, v4, :cond_2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    sget v1, Lbez$g;->music_quality_standard:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    const-string v1, "HQ"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    const-string v1, "SQ"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    const-string v1, "Hi-Res"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    sget v1, Lbez$g;->music_quality_mq:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mDolbyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 227
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public refreshColor(IIII)V
    .locals 0

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->player_vip_label:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->player_vip_label:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->m_color_text_4:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->player_common_tag_bg_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->player_common_tag_bg_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mDolbyIcon:Landroid/widget/ImageView;

    const-string p2, "#FFE1E2E5"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerTxt:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mDolbyIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void
.end method

.method public refreshSinger(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->onRefreshQuality()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->d()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->showVipLabel()V

    return-void
.end method

.method public setDefault()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSingerTxt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setListener()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x14

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;II)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mVipLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;II)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showQualityGuide()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lbhl;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    invoke-virtual {v0}, Lbhl;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityLayout:Landroid/widget/FrameLayout;

    const/16 v2, -0x64

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lbhl;->showAsDropDown(Landroid/view/View;II)V

    .line 239
    invoke-static {}, Laye;->a()Laye;

    move-result-object v0

    invoke-virtual {v0}, Laye;->d()V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    invoke-virtual {v0, v1}, Lbhl;->a(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mQualityGuidePopWindow:Lbhl;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    invoke-virtual {v0, v1}, Lbhl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public willLeaveThisLogin()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbjm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->mSongQualityChooseDialog:Lbjm;

    invoke-virtual {v0}, Lbjm;->dismiss()V

    :cond_0
    return-void
.end method
