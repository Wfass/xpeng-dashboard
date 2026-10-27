.class public Lcom/xiaopeng/xui/widget/XStateBarView;
.super Landroid/widget/FrameLayout;
.source "XStateBarView.java"


# instance fields
.field alpha:F

.field alphaView:Landroid/view/View;

.field radius:F

.field realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

.field scrollableView:[Landroid/view/View;

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    .line 31
    new-instance v0, Lcom/xiaopeng/xui/view/XView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_color_bg_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 35
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->setBlurRadius(F)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;->addView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method private declared-synchronized getBlurRadius(I)V
    .locals 3
    .param p1, "scrollY"    # I

    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "radius":F
    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 66
    .end local v0    # "radius":F
    .local v1, "radius":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 69
    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 70
    const/high16 v1, 0x41c80000    # 25.0f

    .line 72
    :cond_1
    :try_start_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->radius:F

    .line 73
    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 63
    .end local v1    # "radius":F
    .end local p1    # "scrollY":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/widget/XStateBarView;
    throw p1
.end method

.method public static synthetic lambda$bindScrollableView$0(Lcom/xiaopeng/xui/widget/XStateBarView;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "newY":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 53
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    .end local v4    # "v":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    .line 56
    iget v1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    .line 57
    const-string v1, "XStateBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static synthetic lambda$updateView$1(Lcom/xiaopeng/xui/widget/XStateBarView;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    return-void
.end method


# virtual methods
.method public varargs bindScrollableView([Landroid/view/View;)V
    .locals 6
    .param p1, "views"    # [Landroid/view/View;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    .line 46
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 49
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    .line 50
    new-instance v4, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$sjoBQtezXodP1sFeblFyEml1y8Y;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$sjoBQtezXodP1sFeblFyEml1y8Y;-><init>(Lcom/xiaopeng/xui/widget/XStateBarView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 48
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    .line 61
    return-void
.end method

.method public updateView(I)V
    .locals 4
    .param p1, "scrollY"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XStateBarView;->getBlurRadius(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->radius:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->setBlurRadius(F)V

    .line 80
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$SHdfysB7vy7xMWZs1LnLphj-5mQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$SHdfysB7vy7xMWZs1LnLphj-5mQ;-><init>(Lcom/xiaopeng/xui/widget/XStateBarView;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_0
    return-void
.end method
