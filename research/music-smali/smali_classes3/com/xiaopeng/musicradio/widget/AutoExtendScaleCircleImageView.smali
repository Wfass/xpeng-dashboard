.class public Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;
.super Lcom/xiaopeng/musicradio/widget/AutoExtendCircleImageView;
.source "AutoExtendScaleCircleImageView.java"


# instance fields
.field private l:F

.field private m:F

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoExtendCircleImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/AutoExtendCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendCircleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_two_scale_extend:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->l:F

    .line 40
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_one_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->m:F

    .line 41
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_front_full_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->n:F

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_back_full_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->o:F

    .line 43
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->l:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 44
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->a:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->l:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->a:I

    .line 45
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->e:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->l:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->e:I

    .line 47
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->m:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 48
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->b:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->m:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->b:I

    .line 49
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->f:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->m:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->f:I

    .line 51
    :cond_1
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->n:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    .line 52
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->c:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->n:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->c:I

    .line 53
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->g:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->n:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->g:I

    .line 55
    :cond_2
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->o:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    .line 56
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->d:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->o:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->d:I

    .line 57
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->h:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->o:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleCircleImageView;->h:I

    :cond_3
    return-void
.end method
