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

.field private static MAX_LIGHT_RADIUS:F = 200.0f


# instance fields
.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mBrightness:I

.field private mLightAlpha:I

.field private mLightColor:I

.field private mLightStrength:F

.field private mLightType:I

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    const/16 v0, 0xff

    .line 32
    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightAlpha:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

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
    iget v2, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    const/4 v3, -0x1

    if-lez v2, :cond_0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 85
    new-instance v2, Landroid/graphics/LightingColorFilter;

    iget v4, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightAlpha:I

    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v2, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 89
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 91
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 97
    iget v1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    if-eq v1, v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please set light color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

    .line 66
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mBrightness:I

    return-void
.end method

.method public setLightColor(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightColor:I

    return-void
.end method

.method public setLightRadius(F)V
    .locals 0

    .line 58
    sput p1, Lcom/xiaopeng/xui/graphics/XLightPaint;->MAX_LIGHT_RADIUS:F

    return-void
.end method

.method public setLightStrength(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightStrength:F

    return-void
.end method

.method public setLightType(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaopeng/xui/graphics/XLightPaint;->mLightType:I

    return-void
.end method
