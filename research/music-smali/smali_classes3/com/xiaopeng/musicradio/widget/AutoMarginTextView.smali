.class public Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "AutoMarginTextView.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected e:I

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

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->w:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->y:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->v:Z

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 134
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

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

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->f:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->g:I

    .line 66
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->h:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->i:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->j:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->k:I

    .line 71
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->l:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->m:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->n:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->o:I

    .line 76
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->p:I

    .line 77
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->q:I

    .line 79
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->r:I

    .line 80
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->s:I

    .line 81
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->t:I

    .line 82
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->u:I

    .line 84
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a:I

    .line 85
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->b:I

    .line 86
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->c:I

    .line 87
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->e:I

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

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->w:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

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

    const-string v4, "AutoMarginTextView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    .line 152
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->w:Z

    if-eqz v1, :cond_4

    .line 154
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

    .line 155
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->y:Z

    .line 156
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->f:I

    if-eq v0, v4, :cond_0

    .line 158
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v3

    .line 160
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->j:I

    if-eq v1, v4, :cond_1

    .line 162
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v5

    .line 164
    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->n:I

    if-eq v1, v4, :cond_2

    .line 166
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v5

    .line 168
    :cond_2
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->r:I

    if-eq v1, v4, :cond_3

    .line 170
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v0, v5

    .line 172
    :cond_3
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a:I

    int-to-float p1, p1

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->setTextSize(IF)V

    goto/16 :goto_4

    :cond_4
    if-eqz v2, :cond_9

    .line 174
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

    .line 175
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->y:Z

    .line 176
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->g:I

    if-eq v0, v4, :cond_5

    .line 178
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v3

    .line 180
    :goto_1
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->k:I

    if-eq v1, v4, :cond_6

    .line 182
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v5

    .line 184
    :cond_6
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->o:I

    if-eq v1, v4, :cond_7

    .line 186
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v5

    .line 188
    :cond_7
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->s:I

    if-eq v1, v4, :cond_8

    .line 190
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v0, v5

    .line 192
    :cond_8
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->b:I

    int-to-float p1, p1

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->setTextSize(IF)V

    goto :goto_4

    .line 194
    :cond_9
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

    .line 195
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->y:Z

    .line 196
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->h:I

    if-eq v0, v4, :cond_a

    .line 198
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v5

    goto :goto_2

    :cond_a
    move v0, v3

    .line 200
    :goto_2
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->l:I

    if-eq v1, v4, :cond_b

    .line 202
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v5

    .line 204
    :cond_b
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->p:I

    if-eq v1, v4, :cond_c

    .line 206
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v5

    .line 208
    :cond_c
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->t:I

    if-eq v1, v4, :cond_d

    .line 210
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v0, v5

    .line 212
    :cond_d
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->c:I

    int-to-float p1, p1

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->setTextSize(IF)V

    goto :goto_4

    .line 215
    :cond_e
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->x:Z

    .line 216
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->y:Z

    .line 217
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->w:Z

    .line 218
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->i:I

    if-eq v0, v4, :cond_f

    .line 220
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v5

    goto :goto_3

    :cond_f
    move v0, v3

    .line 222
    :goto_3
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->m:I

    if-eq v1, v4, :cond_10

    .line 224
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v5

    .line 226
    :cond_10
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->q:I

    if-eq v1, v4, :cond_11

    .line 228
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v5

    .line 230
    :cond_11
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->u:I

    if-eq v1, v4, :cond_12

    .line 232
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v0, v5

    .line 234
    :cond_12
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->e:I

    int-to-float p1, p1

    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->setTextSize(IF)V

    :goto_4
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginTextView"

    const-string v0, "onConfigurationChanged: "

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->b()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->v:Z

    const-string v0, "AutoMarginTextView"

    const-string v1, "onLayout: "

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XTextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->b()V

    const-string v0, "AutoMarginTextView"

    const-string v1, "onMeasure: "

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->onMeasure(II)V

    return-void
.end method
