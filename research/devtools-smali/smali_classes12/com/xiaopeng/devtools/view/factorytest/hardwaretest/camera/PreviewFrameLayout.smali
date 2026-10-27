.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# instance fields
.field private JD:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-wide p1, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    iput-wide p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->JD:D

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 38
    sub-int/2addr p1, v0

    .line 39
    sub-int/2addr p2, v1

    .line 42
    if-le p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-eqz v2, :cond_1

    .line 44
    move v3, p1

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    if-eqz v2, :cond_2

    .line 45
    move p1, p2

    :cond_2
    int-to-double v4, v3

    int-to-double v6, p1

    iget-wide v8, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->JD:D

    mul-double/2addr v8, v6

    cmpl-double p2, v4, v8

    if-lez p2, :cond_3

    .line 46
    iget-wide v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->JD:D

    mul-double/2addr v6, v3

    double-to-int v3, v6

    goto :goto_2

    .line 48
    :cond_3
    iget-wide p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->JD:D

    div-double/2addr v4, p1

    double-to-int p1, v4

    .line 50
    :goto_2
    if-eqz v2, :cond_4

    .line 51
    nop

    .line 52
    nop

    .line 59
    move v10, v3

    move v3, p1

    move p1, v10

    goto :goto_3

    .line 54
    :cond_4
    nop

    .line 55
    nop

    .line 59
    :goto_3
    add-int/2addr p1, v0

    .line 60
    add-int/2addr v3, v1

    .line 62
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 63
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 64
    return-void
.end method

.method public setRatio(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->JD:D

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/PreviewFrameLayout;->requestLayout()V

    .line 74
    return-void
.end method
