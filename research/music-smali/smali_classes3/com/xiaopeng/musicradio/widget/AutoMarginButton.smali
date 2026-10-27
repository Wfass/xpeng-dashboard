.class public Lcom/xiaopeng/musicradio/widget/AutoMarginButton;
.super Lcom/xiaopeng/xui/widget/XButton;
.source "AutoMarginButton.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

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

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 106
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 107
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 108
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->s:Z

    if-ne v3, v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->u:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->r:Z

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_left:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a:I

    .line 60
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->b:I

    .line 61
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->c:I

    .line 62
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->e:I

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->f:I

    .line 65
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->g:I

    .line 66
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->h:I

    .line 67
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->i:I

    .line 69
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->j:I

    .line 70
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->k:I

    .line 71
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->l:I

    .line 72
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->m:I

    .line 74
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->n:I

    .line 75
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->o:I

    .line 76
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->p:I

    .line 77
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_margin_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->q:I

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 133
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 134
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 135
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->s:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIs23 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

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

    const-string v4, "AutoMarginButton"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 141
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->s:Z

    if-eqz v1, :cond_3

    .line 143
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

    .line 144
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->u:Z

    .line 145
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->a:I

    if-eq v0, v4, :cond_0

    .line 147
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 149
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->f:I

    if-eq v0, v4, :cond_1

    .line 151
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 153
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->j:I

    if-eq v0, v4, :cond_2

    .line 155
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 157
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->n:I

    if-eq v0, v4, :cond_f

    .line 159
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 162
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

    .line 163
    iput-boolean v5, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->u:Z

    .line 164
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->b:I

    if-eq v0, v4, :cond_4

    .line 166
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 168
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->g:I

    if-eq v0, v4, :cond_5

    .line 170
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 172
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->k:I

    if-eq v0, v4, :cond_6

    .line 174
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 176
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->o:I

    if-eq v0, v4, :cond_f

    .line 178
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 181
    :cond_7
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

    .line 182
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->u:Z

    .line 183
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->c:I

    if-eq v0, v4, :cond_8

    .line 185
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 187
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->h:I

    if-eq v0, v4, :cond_9

    .line 189
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 191
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->l:I

    if-eq v0, v4, :cond_a

    .line 193
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 195
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->p:I

    if-eq v0, v4, :cond_f

    .line 197
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 201
    :cond_b
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->t:Z

    .line 202
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->u:Z

    .line 203
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->s:Z

    .line 204
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->e:I

    if-eq v0, v4, :cond_c

    .line 206
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v5

    .line 208
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->i:I

    if-eq v0, v4, :cond_d

    .line 210
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v5

    .line 212
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->m:I

    if-eq v0, v4, :cond_e

    .line 214
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v5

    .line 216
    :cond_e
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->q:I

    if-eq v0, v4, :cond_f

    .line 218
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    move v3, v5

    :cond_f
    return v3
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AutoMarginButton"

    const-string v0, "onConfigurationChanged: "

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->b()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->r:Z

    const-string v0, "AutoMarginButton"

    const-string v1, "onLayout: "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XButton;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginButton;->b()V

    const-string v0, "AutoMarginButton"

    const-string v1, "onMeasure: "

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->onMeasure(II)V

    return-void
.end method
