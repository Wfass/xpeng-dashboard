.class public Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;
.super Ljava/lang/Object;
.source "XBesselCurve3Interpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final STEP_SIZE:F = 2.4414062E-4f


# instance fields
.field private mLastI:I

.field private final point1:Landroid/graphics/PointF;

.field private final point2:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 16
    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v0, v2}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    .line 17
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p3, v0, Landroid/graphics/PointF;->x:F

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p4, v0, Landroid/graphics/PointF;->y:F

    .line 24
    return-void
.end method

.method public static cubicEquation(DDD)D
    .locals 13
    .param p0, "t"    # D
    .param p2, "p1"    # D
    .param p4, "p2"    # D

    .line 65
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    .line 66
    .local v0, "u":D
    mul-double v2, p0, p0

    .line 67
    .local v2, "tt":D
    mul-double v4, v0, v0

    .line 68
    .local v4, "uu":D
    mul-double v6, v2, p0

    .line 69
    .local v6, "ttt":D
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double v10, v8, v4

    mul-double/2addr v10, p0

    mul-double/2addr v10, p2

    mul-double/2addr v8, v0

    mul-double/2addr v8, v2

    mul-double v8, v8, p4

    add-double/2addr v10, v8

    add-double/2addr v10, v6

    return-wide v10
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .param p1, "input"    # F

    .line 40
    move v0, p1

    .line 42
    .local v0, "t":F
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 43
    iput v2, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 47
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_2

    .line 48
    int-to-float v3, v1

    const/high16 v4, 0x39800000

    mul-float v0, v3, v4

    .line 49
    float-to-double v3, v0

    iget-object v5, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget-object v7, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->cubicEquation(DDD)D

    move-result-wide v3

    .line 50
    .local v3, "tempX":D
    float-to-double v5, p1

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_1

    .line 51
    iput v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 52
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    .end local v3    # "tempX":D
    :cond_2
    :goto_1
    float-to-double v3, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v5, v1

    iget-object v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v7, v1

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->cubicEquation(DDD)D

    move-result-wide v3

    .line 58
    .local v3, "value":D
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 59
    iput v2, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 61
    :cond_3
    double-to-float v1, v3

    return v1
.end method

.method public reset()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 36
    return-void
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p3, v0, Landroid/graphics/PointF;->x:F

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p4, v0, Landroid/graphics/PointF;->y:F

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 32
    return-void
.end method
