.class public Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
.super Ljava/lang/Object;
.source "XShimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;,
        Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;,
        Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;,
        Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Direction;,
        Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Shape;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMPONENT_COUNT:I = 0x4

.field public static msGlobalEnable:Z


# instance fields
.field alphaShimmer:Z

.field animationDuration:J

.field autoStart:Z

.field baseColor:I

.field clipToChildren:Z

.field final colors:[I

.field direction:I

.field dropoff:F

.field fixedHeight:I

.field fixedWidth:I

.field heightRatio:F

.field highlightColor:I

.field intensity:F

.field final positions:[F

.field repeatCount:I

.field repeatDelay:J

.field repeatMode:I

.field shape:I

.field tilt:F

.field widthRatio:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 46
    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const v1, 0x66ffffff

    .line 52
    iput v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    const v1, 0xffffff

    .line 53
    iput v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    .line 54
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedWidth:I

    .line 56
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->widthRatio:F

    .line 60
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->heightRatio:F

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 64
    iput v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    .line 67
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->clipToChildren:Z

    .line 70
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->alphaShimmer:Z

    const/4 v1, -0x1

    .line 73
    iput v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatCount:I

    .line 74
    iput v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatMode:I

    const-wide/16 v0, 0x3e8

    .line 75
    iput-wide v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    return-void
.end method


# virtual methods
.method height(I)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->heightRatio:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method updateColors()V
    .locals 6

    .line 91
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget v5, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    aput v5, v0, v3

    .line 95
    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    aput v3, v0, v4

    .line 96
    aput v3, v0, v2

    .line 97
    aput v5, v0, v1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget v5, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    aput v5, v0, v3

    .line 101
    aput v5, v0, v4

    .line 102
    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    aput v3, v0, v2

    .line 103
    aput v3, v0, v1

    :goto_0
    return-void
.end method

.method updatePositions()V
    .locals 9

    .line 109
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v5, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    iget v7, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    sub-float v7, v6, v7

    iget v8, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v0, v3

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    sub-float v3, v6, v3

    div-float/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v0, v5

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    add-float/2addr v3, v6

    div-float/2addr v3, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    add-float/2addr v2, v6

    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    add-float/2addr v2, v3

    div-float/2addr v2, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    aput v4, v0, v3

    .line 119
    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v5

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    add-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v0, v2

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    aput v6, v0, v1

    :goto_0
    return-void
.end method

.method width(I)I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedWidth:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->widthRatio:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0
.end method
