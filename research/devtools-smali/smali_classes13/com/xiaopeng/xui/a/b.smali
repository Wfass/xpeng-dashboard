.class public Lcom/xiaopeng/xui/a/b;
.super Ljava/lang/Object;
.source "XLightPaint.java"


# static fields
.field private static abb:F


# instance fields
.field private aaV:Landroid/graphics/LightingColorFilter;

.field private aaW:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private aaX:I

.field private aaY:I

.field private aaZ:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private aba:I

.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/xiaopeng/xui/a/b;->abb:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/a/b;->aaW:I

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lcom/xiaopeng/xui/a/b;->aaX:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/a/b;->aaY:I

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/xiaopeng/xui/a/b;->aaZ:F

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/a/b;->aba:I

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/a/b;->mPaint:Landroid/graphics/Paint;

    .line 47
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 82
    sget v0, Lcom/xiaopeng/xui/a/b;->abb:F

    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aaZ:F

    mul-float/2addr v0, v1

    .line 83
    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aaY:I

    const/4 v2, -0x1

    if-lez v1, :cond_0

    .line 84
    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aaZ:F

    iget v3, p0, Lcom/xiaopeng/xui/a/b;->aaY:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 85
    new-instance v3, Landroid/graphics/LightingColorFilter;

    iget v4, p0, Lcom/xiaopeng/xui/a/b;->aaX:I

    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v3, v2, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v3, p0, Lcom/xiaopeng/xui/a/b;->aaV:Landroid/graphics/LightingColorFilter;

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xui/a/b;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xiaopeng/xui/a/b;->aaV:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aba:I

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 90
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 91
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/a/b;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/a/b;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/a/b;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/a/b;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 96
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aba:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 97
    iget v1, p0, Lcom/xiaopeng/xui/a/b;->aaW:I

    if-eq v1, v2, :cond_3

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/xui/a/b;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/a/b;->aaW:I

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please set light color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    :goto_0
    return-void
.end method

.method public bZ(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 66
    iput p1, p0, Lcom/xiaopeng/xui/a/b;->aaY:I

    .line 67
    return-void
.end method

.method public es(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaopeng/xui/a/b;->aba:I

    .line 51
    return-void
.end method

.method public f(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 78
    iput p1, p0, Lcom/xiaopeng/xui/a/b;->aaZ:F

    .line 79
    return-void
.end method

.method public setLightColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 74
    iput p1, p0, Lcom/xiaopeng/xui/a/b;->aaW:I

    .line 75
    return-void
.end method

.method public setLightRadius(F)V
    .locals 0

    .line 58
    sput p1, Lcom/xiaopeng/xui/a/b;->abb:F

    .line 59
    return-void
.end method
