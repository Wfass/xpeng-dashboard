.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;
.super Landroid/widget/FrameLayout;
.source "PlayerAlbumLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerAlbumLayout"


# instance fields
.field protected mBorderImg:Lcom/xiaopeng/xui/widget/XImageView;

.field protected mCdImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mCoverAnimator:Landroid/animation/ObjectAnimator;

.field protected mCoverImg:Landroid/widget/ImageView;

.field protected mCoverLayout:Landroid/widget/FrameLayout;

.field protected mCurrentAnimValue:F

.field private mCurrentPlayTime:J

.field private mDayDrawableArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDefault:Z

.field protected mIsPlaying:Z

.field protected mIsResume:Z

.field private mNightDrawableArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mSupportStaticCover:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    .line 148
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    .line 148
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    .line 148
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    .line 148
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    .line 56
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init(Z)V

    return-void
.end method

.method private createAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .line 225
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    const/4 v1, -0x1

    .line 226
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v1, "rotation"

    .line 227
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    const-wide/16 v1, 0x59d8

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    .line 230
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 231
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 232
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentPlayTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init(Z)V

    return-void
.end method

.method private init(Z)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->handleInflate(Z)V

    .line 77
    sget p1, Lble$d;->img_cover:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    .line 78
    sget p1, Lble$d;->img_cd:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCdImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 79
    sget p1, Lble$d;->layout_cover:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverLayout:Landroid/widget/FrameLayout;

    .line 80
    sget p1, Lble$d;->img_border:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mBorderImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 82
    new-instance p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->post(Ljava/lang/Runnable;)Z

    .line 89
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object p1

    invoke-virtual {p1}, Laqz;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    return-void
.end method

.method private refreshCdAnimatior()V
    .locals 2

    .line 205
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    xor-int/lit8 v0, v0, 0x1

    .line 206
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsPlaying:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->createAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshCoverScale(F)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public getCoverAniPlayTime()F
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentAnimValue:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 260
    iput v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentAnimValue:F

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getDefaultCover(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 159
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mNightDrawableArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mDayDrawableArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected getLayoutId()I
    .locals 1

    .line 94
    sget v0, Lble$e;->layout_player_album:I

    return v0
.end method

.method protected handleInflate(Z)V
    .locals 4

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getLayoutId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getLayoutId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :goto_1
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerAlbumLayout Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerAlbumLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsPlaying:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    return v0
.end method

.method public matchCoverAnimTime(F)V
    .locals 3

    .line 239
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->createAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x46b3b000    # 23000.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 287
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 288
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentPlayTime:J

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentAnimValue:F

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 122
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsResume:Z

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mSupportStaticCover:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 274
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCurrentPlayTime:J

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshCoverImgScale(IZ)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const p1, 0x3f1eb852    # 0.62f

    .line 191
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale(F)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCdImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->img_music_cd_neteasemusic:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCdImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mBorderImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3f68f5c3    # 0.91f

    .line 196
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale(F)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCdImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mBorderImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public refreshCoverScale()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsDefault:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 178
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3f68f5c3    # 0.91f

    .line 180
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale(F)V

    :goto_0
    return-void
.end method

.method public refreshDefaultCover(I)V
    .locals 1

    .line 150
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getDefaultCover(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsDefault:Z

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    return-void
.end method

.method public refreshDefaultCover(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsDefault:Z

    if-eqz p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    return-void
.end method

.method public refreshPlayState(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 267
    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mIsPlaying:Z

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCdAnimatior()V

    return-void
.end method
