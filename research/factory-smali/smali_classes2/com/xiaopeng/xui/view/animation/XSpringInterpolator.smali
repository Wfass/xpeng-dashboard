.class public Lcom/xiaopeng/xui/view/animation/XSpringInterpolator;
.super Ljava/lang/Object;
.source "XSpringInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .line 18
    const v0, 0x3f333333    # 0.7f

    .line 19
    .local v0, "factor":F
    const/high16 v1, -0x3ed00000    # -11.0f

    mul-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    sub-float v3, p1, v3

    float-to-double v3, v3

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v5

    float-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method
