.class public Lcom/xiaopeng/xui/graphics/XLightPaint;
.super Ljava/lang/Object;
.source "XLightPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/graphics/XLightPaint$LightType;
    }
.end annotation


# static fields
.field public static final LIGHT_TYPE_BLUR_MASK_FILTER:I = 0x0

.field public static final LIGHT_TYPE_SHADOW_LAYER:I = 0x1

.field private static MAX_LIGHT_RADIUS:F


# instance fields
.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mBrightness:I

.field private mLightAlpha:I

.field private mLightColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mLightStrength:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private mLightType:I

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/xiaopeng/xui/graphics/XLightPaint;->MAX_LIGHT_RADIUS:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightAlpha:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    .line 47
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 82
    sget v0, Lcom/xiaopeng/xui/graphics/XLightPaint;->MAX_LIGHT_RADIUS:F

    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    mul-float/2addr v0, v1

    .line 83
    .local v0, "radius":F
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    const/4 v2, -0x1

    if-lez v1, :cond_0

    .line 84
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    iget v3, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 85
    .local v1, "color":I
    new-instance v3, Landroid/graphics/LightingColorFilter;

    iget v4, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightAlpha:I

    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v3, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 86
    iget-object v3, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    .end local v1    # "color":I
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 90
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 91
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 96
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 97
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    if-eq v1, v2, :cond_3

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 98
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please set light color."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_4
    :goto_0
    return-void
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "add"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 66
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    .line 67
    return-void
.end method

.method public setLightColor(I)V
    .locals 0
    .param p1, "lightColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 74
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    .line 75
    return-void
.end method

.method public setLightRadius(F)V
    .locals 0
    .param p1, "maxLightRadius"    # F

    .line 58
    sput p1, Lcom/xiaopeng/xui/graphics/XLightPaint;->MAX_LIGHT_RADIUS:F

    .line 59
    return-void
.end method

.method public setLightStrength(F)V
    .locals 0
    .param p1, "lightStrength"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 78
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    .line 79
    return-void
.end method

.method public setLightType(I)V
    .locals 0
    .param p1, "lightType"    # I

    .line 50
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    .line 51
    return-void
.end method
