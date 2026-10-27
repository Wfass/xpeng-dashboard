.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDecelerateInterpolator"
.end annotation


# instance fields
.field private mFactor:F

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

.field zeroCnt:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V
    .locals 0

    .line 4031
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4033
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->mFactor:F

    const/4 p1, 0x0

    .line 4034
    iput p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->zeroCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$1;)V
    .locals 0

    .line 4031
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 4039
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->zeroCnt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p1, 0x3c5d2f1b    # 0.0135f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4042
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->zeroCnt:I

    .line 4044
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->zeroCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->zeroCnt:I

    .line 4046
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$MyDecelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    sub-float p1, v1, p1

    mul-float/2addr p1, p1

    sub-float/2addr v1, p1

    goto :goto_1

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float/2addr v1, p1

    float-to-double v4, v1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 4049
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float v1, v2

    :goto_1
    return v1
.end method
