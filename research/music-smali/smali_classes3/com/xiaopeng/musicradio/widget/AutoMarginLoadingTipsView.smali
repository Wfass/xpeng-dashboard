.class public Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "AutoMarginLoadingTipsView.java"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 106
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->B:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->D:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->A:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->A:Z

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->k:I

    .line 58
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->l:I

    .line 59
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->m:I

    .line 60
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->n:I

    .line 62
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->o:I

    .line 63
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->p:I

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->q:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->r:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->s:I

    .line 68
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->t:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->u:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->v:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->w:I

    .line 73
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->x:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->y:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->z:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 131
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 132
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 133
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->B:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

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

    .line 139
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->B:Z

    if-eqz v1, :cond_3

    .line 141
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

    .line 142
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->D:Z

    .line 143
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->k:I

    if-eq v0, v4, :cond_0

    .line 145
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 147
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->o:I

    if-eq v0, v4, :cond_1

    .line 149
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 151
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->s:I

    if-eq v0, v4, :cond_2

    .line 153
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 155
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->w:I

    if-eq v0, v4, :cond_f

    .line 157
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 160
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

    .line 161
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->D:Z

    .line 162
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->l:I

    if-eq v0, v4, :cond_4

    .line 164
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 166
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->p:I

    if-eq v0, v4, :cond_5

    .line 168
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 170
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->t:I

    if-eq v0, v4, :cond_6

    .line 172
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 174
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->x:I

    if-eq v0, v4, :cond_f

    .line 176
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 179
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

    .line 180
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->D:Z

    .line 181
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->m:I

    if-eq v0, v4, :cond_8

    .line 183
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 185
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->q:I

    if-eq v0, v4, :cond_9

    .line 187
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 189
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->u:I

    if-eq v0, v4, :cond_a

    .line 191
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 193
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->y:I

    if-eq v0, v4, :cond_f

    .line 195
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 199
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->C:Z

    .line 200
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->D:Z

    .line 201
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->B:Z

    .line 202
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->n:I

    if-eq v0, v4, :cond_c

    .line 204
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 206
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->r:I

    if-eq v0, v4, :cond_d

    .line 208
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 210
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->v:I

    if-eq v0, v4, :cond_e

    .line 212
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 214
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->z:I

    if-eq v0, v4, :cond_f

    .line 216
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginLayout"

    const-string v0, "onConfigurationChanged: "

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->b()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->A:Z

    const-string v0, "AutoMarginLayout"

    const-string v1, "onLayout: "

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginLoadingTipsView;->b()V

    const-string v0, "AutoMarginLayout"

    const-string v1, "onMeasure: "

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onMeasure(II)V

    return-void
.end method
