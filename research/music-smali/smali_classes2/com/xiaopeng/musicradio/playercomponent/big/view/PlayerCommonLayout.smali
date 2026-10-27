.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "PlayerCommonLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/big/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/c;",
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerCommonLayout"


# instance fields
.field private mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private mCoverImg:Landroid/widget/ImageView;

.field private mEndTv:Landroid/widget/TextView;

.field private mIsDragProgressBar:Z

.field private mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mLoveImg:Landroid/view/View;

.field private mLoveListener:Landroid/view/View$OnClickListener;

.field private mNextImg:Landroid/view/View;

.field private mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayListImg:Landroid/view/View;

.field private mPlayListListener:Landroid/view/View$OnClickListener;

.field private mPreImg:Landroid/view/View;

.field private mProgressBar:Landroid/widget/SeekBar;

.field private mRefreshCoverListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;

.field private mSceneId:Ljava/lang/String;

.field private mStartTv:Landroid/widget/TextView;

.field private mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTouchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->clickPlayList()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->refreshProgressTxt(II)V

    return-void
.end method

.method static synthetic access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mIsDragProgressBar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private clickPlayList()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->hideContainer()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->showContainer()V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private enablePlayList(Z)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private enableSeek(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 336
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 337
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 341
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private refreshProgressTxt(II)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public closePlayList()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->clickPlayList()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->createPresenter()Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;-><init>()V

    return-object v0
.end method

.method public dispatchPlayListClick()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public doShowEff(Z)V
    .locals 0

    return-void
.end method

.method public enableLove(Z)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public enableTouch(Z)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setClickable(Z)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 364
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 365
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method protected findView()V
    .locals 1

    .line 80
    sget v0, Lble$d;->img_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    .line 81
    sget v0, Lble$d;->layout_info:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 82
    sget v0, Lble$d;->img_cover:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    .line 83
    sget v0, Lble$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 84
    sget v0, Lble$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    sget v0, Lble$d;->btn_pre:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    .line 86
    sget v0, Lble$d;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 87
    sget v0, Lble$d;->layout_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    .line 88
    sget v0, Lble$d;->progress_bar_h:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    .line 89
    sget v0, Lble$d;->tv_start:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    .line 90
    sget v0, Lble$d;->tv_end:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    .line 91
    sget v0, Lble$d;->img_play_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    .line 92
    sget v0, Lble$d;->view_touch_change:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTouchView:Landroid/view/View;

    .line 93
    sget v0, Lble$d;->title_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 242
    sget v0, Lble$e;->layout_player_common:I

    return v0
.end method

.method public getLoveImg()Landroid/view/View;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    return-object v0
.end method

.method public getUpdateViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 483
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideContainer()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideInfo()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method public isShowPlayList()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 461
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$c;->bg_progress_v4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$c;->bg_play_seek_thumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    :cond_0
    return-void
.end method

.method public openPlayList()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->clickPlayList()V

    :cond_0
    return-void
.end method

.method public pauseEff()V
    .locals 0

    return-void
.end method

.method public refreshCover(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mRefreshCoverListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;->a(I)V

    :cond_0
    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mRefreshCoverListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;

    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public refreshPlayState(IZ)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 389
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lble$c;->ic_music_play_96:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 390
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lble$f;->vui_label_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v2, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lble$c;->ic_music_play_96:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lble$f;->vui_label_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v2, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lble$c;->ic_music_pause_96:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_stop:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v1, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lble$c;->ic_music_pause_96:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 378
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_play:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lble$f;->vui_label_stop:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v1, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSceneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public refreshPos(III)V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mIsDragProgressBar:Z

    if-eqz v0, :cond_0

    const-string p1, "PlayerCommonLayout"

    const-string p2, "refreshPos: draging======"

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 269
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 272
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->refreshProgressTxt(II)V

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enablePlayList(Z)V

    .line 313
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enableSeek(Z)V

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    .line 317
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    return-void
.end method

.method public resumeEff()V
    .locals 0

    return-void
.end method

.method public setDefault()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$f;->music_no_play_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lble$f;->music_bar_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 325
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->refreshPlayState(IZ)V

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v0, v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->refreshPos(III)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enableTouch(Z)V

    .line 328
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enablePlayList(Z)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enableLove(Z)V

    .line 330
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enableSeek(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPreImg:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mNextImg:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$5;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$6;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTouchView:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$7;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLoveListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLoveVisible(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPlayListClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRefreshCoverListener(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mRefreshCoverListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$a;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->enableViewVuiMode(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public showContainer()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTouchView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->pauseEff()V

    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showInfo()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mCoverImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public showPlayListIcon(Z)V
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPlayListIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mPlayListImg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->clickPlayList()V

    :cond_1
    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method public updateLove(ZZ)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->enableLove(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLoveImg:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateTitleLeftLabel(IZ)V
    .locals 3

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    const-string p2, "VIP"

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lble$f;->player_buy:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lble$f;->player_pay:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->mLabelTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
