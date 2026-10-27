.class public Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "AutoMarginLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoMarginLayout"


# instance fields
.field private mBackFullMarginBottom:I

.field private mBackFullMarginLeft:I

.field private mBackFullMarginRight:I

.field private mBackFullMarginTop:I

.field private mConfigMargin:Z

.field private mFrontFullMarginBottom:I

.field private mFrontFullMarginLeft:I

.field private mFrontFullMarginRight:I

.field private mFrontFullMarginTop:I

.field private mIs13:Z

.field private mIs23:Z

.field private mIsFront:Z

.field private mThreeOneMarginBottom:I

.field private mThreeOneMarginLeft:I

.field private mThreeOneMarginRight:I

.field private mThreeOneMarginTop:I

.field private mThreeTwoMarginBottom:I

.field private mThreeTwoMarginLeft:I

.field private mThreeTwoMarginRight:I

.field private mThreeTwoMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkScreenChange()Z
    .locals 4

    .line 114
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 115
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 117
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIsFront:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs13:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private configMargin()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mConfigMargin:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->checkScreenChange()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mConfigMargin:Z

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 131
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 132
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_left:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginLeft:I

    .line 58
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginLeft:I

    .line 59
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginLeft:I

    .line 60
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginLeft:I

    .line 62
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginRight:I

    .line 63
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginRight:I

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginRight:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginRight:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginTop:I

    .line 68
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginTop:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginTop:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginTop:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginBottom:I

    .line 73
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginBottom:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginBottom:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginBottom:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginLayout"

    const-string v0, "onConfigurationChanged: "

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->configMargin()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->configMargin()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mConfigMargin:Z

    const-string v0, "AutoMarginLayout"

    const-string v1, "onLayout: "

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->configMargin()V

    const-string v0, "AutoMarginLayout"

    const-string v1, "onMeasure: "

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 142
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 143
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 144
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIsFront:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFront = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isThreeTwo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isThreeOne = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutoMarginLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 150
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIsFront:Z

    if-eqz v1, :cond_3

    .line 152
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    .line 153
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs13:Z

    .line 154
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginLeft:I

    if-eq v0, v4, :cond_0

    .line 156
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 158
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginRight:I

    if-eq v0, v4, :cond_1

    .line 160
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 162
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginTop:I

    if-eq v0, v4, :cond_2

    .line 164
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 166
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeTwoMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 168
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 171
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    .line 172
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs13:Z

    .line 173
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginLeft:I

    if-eq v0, v4, :cond_4

    .line 175
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 177
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginRight:I

    if-eq v0, v4, :cond_5

    .line 179
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 181
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginTop:I

    if-eq v0, v4, :cond_6

    .line 183
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 185
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mThreeOneMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 187
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 190
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    .line 191
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs13:Z

    .line 192
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginLeft:I

    if-eq v0, v4, :cond_8

    .line 194
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 196
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginRight:I

    if-eq v0, v4, :cond_9

    .line 198
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 200
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginTop:I

    if-eq v0, v4, :cond_a

    .line 202
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 204
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mFrontFullMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 206
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 210
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs23:Z

    .line 211
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIs13:Z

    .line 212
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mIsFront:Z

    .line 213
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginLeft:I

    if-eq v0, v4, :cond_c

    .line 215
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 217
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginRight:I

    if-eq v0, v4, :cond_d

    .line 219
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 221
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginTop:I

    if-eq v0, v4, :cond_e

    .line 223
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 225
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->mBackFullMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 227
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method
