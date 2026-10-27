.class public Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;
.super Landroidx/cardview/widget/CardView;
.source "AutoMarginCarViewLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoMarginCarViewLayout"


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
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkScreenChange()Z
    .locals 4

    .line 100
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 101
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 102
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 103
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIsFront:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs13:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private configMargin()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mConfigMargin:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->checkScreenChange()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mConfigMargin:Z

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 118
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
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

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginLeft:I

    .line 58
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginLeft:I

    .line 59
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginLeft:I

    .line 60
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginLeft:I

    .line 62
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginRight:I

    .line 63
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginRight:I

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginRight:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginRight:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginTop:I

    .line 68
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginTop:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginTop:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginTop:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginBottom:I

    .line 73
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginBottom:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginBottom:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginBottom:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->configMargin()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->configMargin()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mConfigMargin:Z

    .line 96
    invoke-super/range {p0 .. p5}, Landroidx/cardview/widget/CardView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->configMargin()V

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    return-void
.end method

.method protected setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 128
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 130
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIsFront:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

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

    const-string v4, "AutoMarginCarViewLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 136
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIsFront:Z

    if-eqz v1, :cond_3

    .line 138
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

    .line 139
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs13:Z

    .line 140
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginLeft:I

    if-eq v0, v4, :cond_0

    .line 142
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 144
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginRight:I

    if-eq v0, v4, :cond_1

    .line 146
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 148
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginTop:I

    if-eq v0, v4, :cond_2

    .line 150
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 152
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeTwoMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 154
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 157
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

    .line 158
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs13:Z

    .line 159
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginLeft:I

    if-eq v0, v4, :cond_4

    .line 161
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 163
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginRight:I

    if-eq v0, v4, :cond_5

    .line 165
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 167
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginTop:I

    if-eq v0, v4, :cond_6

    .line 169
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 171
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mThreeOneMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 173
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 176
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

    .line 177
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs13:Z

    .line 178
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginLeft:I

    if-eq v0, v4, :cond_8

    .line 180
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 182
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginRight:I

    if-eq v0, v4, :cond_9

    .line 184
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 186
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginTop:I

    if-eq v0, v4, :cond_a

    .line 188
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 190
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mFrontFullMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 192
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 196
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs23:Z

    .line 197
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIs13:Z

    .line 198
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mIsFront:Z

    .line 199
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginLeft:I

    if-eq v0, v4, :cond_c

    .line 201
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 203
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginRight:I

    if-eq v0, v4, :cond_d

    .line 205
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 207
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginTop:I

    if-eq v0, v4, :cond_e

    .line 209
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 211
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->mBackFullMarginBottom:I

    if-eq v0, v4, :cond_f

    .line 213
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method
