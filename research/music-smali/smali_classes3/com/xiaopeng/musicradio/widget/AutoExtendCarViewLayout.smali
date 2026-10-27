.class public Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;
.super Lcom/xiaopeng/xui/widget/XCardView;
.source "AutoExtendCarViewLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoExtendCarViewLayout"


# instance fields
.field protected mBackFullHeight:I

.field protected mBackFullWidth:I

.field protected mFrontFullHeight:I

.field protected mFrontFullWidth:I

.field protected mThreeOneHeight:I

.field protected mThreeOneWidth:I

.field protected mThreeTwoHeight:I

.field protected mThreeTwoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAutoSize()Landroid/util/Size;
    .locals 3

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeTwoWidth:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeTwoHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeOneWidth:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeOneHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mFrontFullWidth:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mFrontFullHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 81
    :cond_2
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mBackFullWidth:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mBackFullHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_two_width:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeTwoWidth:I

    .line 45
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_one_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeOneWidth:I

    .line 46
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_front_full_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mFrontFullWidth:I

    .line 47
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_back_full_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mBackFullWidth:I

    .line 49
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_two_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeTwoHeight:I

    .line 50
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_one_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mThreeOneHeight:I

    .line 51
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_front_full_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mFrontFullHeight:I

    .line 52
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_back_full_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->mBackFullHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoExtendCarViewLayout;->getAutoSize()Landroid/util/Size;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCardView;->onMeasure(II)V

    return-void
.end method
