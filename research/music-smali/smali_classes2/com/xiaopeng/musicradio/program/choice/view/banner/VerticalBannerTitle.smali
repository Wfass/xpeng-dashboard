.class public Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;
.super Landroid/widget/TextSwitcher;
.source "VerticalBannerTitle.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;
    }
.end annotation


# static fields
.field private static final FLAG_START_AUTO_SCROLL:I = 0x0

.field private static final FLAG_STOP_AUTO_SCROLL:I = 0x1

.field private static final FLAG_UPDATE_AUTO_SCROLL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VerticalBannerTitle"


# instance fields
.field private mAnimDuration:J

.field private mCallback:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;

.field private mCurrentId:I

.field private mHandler:Landroid/os/Handler;

.field private mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    return p0
.end method

.method static synthetic access$108(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)I
    .locals 2

    .line 25
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->updateVerticalTitle()V

    return-void
.end method

.method private init()V
    .locals 0

    .line 51
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method

.method private updateVerticalTitle()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmd;

    invoke-virtual {v0}, Lbmd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCallback:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmd;

    invoke-virtual {v1}, Lbmd;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;->a(J)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCallback:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmd;

    invoke-virtual {v1}, Lbmd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->item_banner_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/widget/TextSwitcher;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimTime(J)V
    .locals 5

    .line 123
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mAnimDuration:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    :try_start_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    long-to-float v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-long v3, p1

    long-to-float v3, v3

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 131
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCallback:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;

    return-void
.end method

.method public setTextList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbmd;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mCurrentId:I

    return-void
.end method

.method public setTextStillTime(J)V
    .locals 1

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;J)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public startAutoScroll()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
