.class public Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "AutoScaleLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoScaleLayout"


# instance fields
.field private mAreaType:Ljava/lang/String;

.field private mBackFullScale:F

.field private mFrontFullScale:F

.field private mIs13:Z

.field private mIs23:Z

.field private mIsFront:Z

.field private mScreenId:I

.field private mThreeOneScale:F

.field private mThreeTwoScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mScreenId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mScreenId:I

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 86
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mScreenId:I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkScreenChange()Z
    .locals 5

    .line 71
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 72
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 75
    iget v3, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mScreenId:I

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mAreaType:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 80
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIsFront:Z

    .line 81
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIs23:Z

    .line 82
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIs13:Z

    return v3
.end method

.method private configScale()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->checkScreenChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIsFront:Z

    if-eqz v0, :cond_2

    .line 97
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIs23:Z

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mThreeTwoScale:F

    goto :goto_0

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mIs13:Z

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mThreeOneScale:F

    goto :goto_0

    .line 102
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mFrontFullScale:F

    goto :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mBackFullScale:F

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->getScaleX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->setScaleX(F)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoScaleLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoScaleLayout_three_two_scale:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mThreeTwoScale:F

    .line 44
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoScaleLayout_three_one_scale:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mThreeOneScale:F

    .line 45
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoScaleLayout_front_full_scale:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mFrontFullScale:F

    .line 46
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoScaleLayout_back_full_scale:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->mBackFullScale:F

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoScaleLayout"

    const-string v0, "onConfigurationChanged: "

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->configScale()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->configScale()V

    const-string v0, "AutoScaleLayout"

    const-string v1, "onLayout: "

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoScaleLayout;->configScale()V

    const-string v0, "AutoScaleLayout"

    const-string v1, "onMeasure: "

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onMeasure(II)V

    return-void
.end method
