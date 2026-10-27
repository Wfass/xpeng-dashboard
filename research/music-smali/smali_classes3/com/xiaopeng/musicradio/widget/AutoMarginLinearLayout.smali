.class public Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "AutoMarginLinearLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 106
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 107
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->r:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->t:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->q:Z

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 121
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_left:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a:I

    .line 59
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->b:I

    .line 60
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->c:I

    .line 61
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->d:I

    .line 63
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->e:I

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->f:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->g:I

    .line 66
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->h:I

    .line 68
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->i:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->j:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->k:I

    .line 71
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->l:I

    .line 73
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->m:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->n:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->o:I

    .line 76
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->p:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 132
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 133
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 134
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->r:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

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

    .line 140
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->r:Z

    if-eqz v1, :cond_3

    .line 142
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

    .line 143
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->t:Z

    .line 144
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->a:I

    if-eq v0, v4, :cond_0

    .line 146
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 148
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->e:I

    if-eq v0, v4, :cond_1

    .line 150
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 152
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->i:I

    if-eq v0, v4, :cond_2

    .line 154
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 156
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->m:I

    if-eq v0, v4, :cond_f

    .line 158
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 161
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

    .line 162
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->t:Z

    .line 163
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->b:I

    if-eq v0, v4, :cond_4

    .line 165
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 167
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->f:I

    if-eq v0, v4, :cond_5

    .line 169
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 171
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->j:I

    if-eq v0, v4, :cond_6

    .line 173
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 175
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->n:I

    if-eq v0, v4, :cond_f

    .line 177
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 180
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

    .line 181
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->t:Z

    .line 182
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->c:I

    if-eq v0, v4, :cond_8

    .line 184
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 186
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->g:I

    if-eq v0, v4, :cond_9

    .line 188
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 190
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->k:I

    if-eq v0, v4, :cond_a

    .line 192
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 194
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->o:I

    if-eq v0, v4, :cond_f

    .line 196
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 200
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->s:Z

    .line 201
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->t:Z

    .line 202
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->r:Z

    .line 203
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->d:I

    if-eq v0, v4, :cond_c

    .line 205
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 207
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->h:I

    if-eq v0, v4, :cond_d

    .line 209
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 211
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->l:I

    if-eq v0, v4, :cond_e

    .line 213
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 215
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->p:I

    if-eq v0, v4, :cond_f

    .line 217
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginLayout"

    const-string v0, "onConfigurationChanged: "

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->b()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->q:Z

    const-string v0, "AutoMarginLayout"

    const-string v1, "onLayout: "

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLinearLayout;->b()V

    const-string v0, "AutoMarginLayout"

    const-string v1, "onMeasure: "

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    return-void
.end method
