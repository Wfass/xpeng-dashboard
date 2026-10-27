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

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p0, v0, v1, v0, v2}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
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
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 23
    iput p4, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static cubicEquation(DDD)D
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double v2, p0, p0

    mul-double v4, v0, v0

    mul-double v6, v2, p0

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v8

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    mul-double/2addr v0, v8

    mul-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v4, v0

    add-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    iput v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    .line 47
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    move v2, p1

    :goto_0
    const/16 v3, 0x1000

    if-ge v0, v3, :cond_2

    int-to-float v2, v0

    const/high16 v3, 0x39800000

    mul-float/2addr v2, v3

    float-to-double v3, v2

    .line 49
    iget-object v5, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget-object v7, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->cubicEquation(DDD)D

    move-result-wide v3

    float-to-double v5, p1

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 51
    iput v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    float-to-double v3, v2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v0

    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v7, v0

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->cubicEquation(DDD)D

    move-result-wide v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 59
    iput v1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    :cond_3
    double-to-float p1, v2

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    return-void
.end method

.method public set(FFFF)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point1:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 28
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->point2:Landroid/graphics/PointF;

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 30
    iput p4, p1, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;->mLastI:I

    return-void
.end method
