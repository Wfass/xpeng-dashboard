.class public Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.source "AutoMarginRecycleView.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

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

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 117
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 118
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 119
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->v:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->x:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private c()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->u:Z

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 134
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_left:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->e:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->f:I

    .line 66
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->g:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->h:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->i:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->j:I

    .line 71
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->k:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->l:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->m:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->n:I

    .line 76
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->o:I

    .line 77
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->p:I

    .line 79
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->q:I

    .line 80
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->r:I

    .line 81
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->s:I

    .line 82
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->t:I

    .line 84
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->a:I

    .line 85
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->b:I

    .line 86
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->c:I

    .line 87
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->d:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 144
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 145
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 146
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->v:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

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

    const-string v4, "AutoMarginRecycleView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 152
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->v:Z

    if-eqz v1, :cond_3

    .line 154
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

    .line 155
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->x:Z

    .line 156
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->e:I

    if-eq v0, v4, :cond_0

    .line 158
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 160
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->i:I

    if-eq v0, v4, :cond_1

    .line 162
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 164
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->m:I

    if-eq v0, v4, :cond_2

    .line 166
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 168
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->q:I

    if-eq v0, v4, :cond_f

    .line 170
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 173
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

    .line 174
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->x:Z

    .line 175
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->f:I

    if-eq v0, v4, :cond_4

    .line 177
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 179
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->j:I

    if-eq v0, v4, :cond_5

    .line 181
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 183
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->n:I

    if-eq v0, v4, :cond_6

    .line 185
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 187
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->r:I

    if-eq v0, v4, :cond_f

    .line 189
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 192
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

    .line 193
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->x:Z

    .line 194
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->g:I

    if-eq v0, v4, :cond_8

    .line 196
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 198
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->k:I

    if-eq v0, v4, :cond_9

    .line 200
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 202
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->o:I

    if-eq v0, v4, :cond_a

    .line 204
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 206
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->s:I

    if-eq v0, v4, :cond_f

    .line 208
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 212
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->w:Z

    .line 213
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->x:Z

    .line 214
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->v:Z

    .line 215
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->h:I

    if-eq v0, v4, :cond_c

    .line 217
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 219
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->l:I

    if-eq v0, v4, :cond_d

    .line 221
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 223
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->p:I

    if-eq v0, v4, :cond_e

    .line 225
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 227
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->t:I

    if-eq v0, v4, :cond_f

    .line 229
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginRecycleView"

    const-string v0, "onConfigurationChanged: "

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->c()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->c()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->u:Z

    const-string v0, "AutoMarginRecycleView"

    const-string v1, "onLayout: "

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginRecycleView;->c()V

    const-string v0, "AutoMarginRecycleView"

    const-string v1, "onMeasure: "

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onMeasure(II)V

    return-void
.end method
