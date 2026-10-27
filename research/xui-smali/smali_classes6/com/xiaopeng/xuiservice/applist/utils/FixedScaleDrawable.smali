.class public Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "FixedScaleDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final LEGACY_ICON_SCALE:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "FixedScaleDrawable"


# instance fields
.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    const v0, 0x3f2b851f    # 0.67f

    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleX:F

    .line 29
    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleY:F

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 39
    .local v0, "saveCount":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleY:F

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 39
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 43
    return-void
.end method

.method public setScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 51
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 52
    .local v1, "w":F
    const v2, 0x3f2b851f    # 0.67f

    mul-float v3, p1, v2

    iput v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleX:F

    .line 53
    mul-float/2addr v2, p1

    iput v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleY:F

    .line 54
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    .line 55
    iget v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleX:F

    div-float v3, v1, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleX:F

    goto :goto_0

    .line 56
    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    .line 57
    iget v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleY:F

    div-float v3, v0, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->mScaleY:F

    .line 59
    :cond_1
    :goto_0
    return-void
.end method
