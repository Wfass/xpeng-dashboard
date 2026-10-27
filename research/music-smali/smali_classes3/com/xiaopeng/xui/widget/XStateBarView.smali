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

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 23
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

    sget v1, Lbyg$e;->x_color_bg_2:I

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
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->setBlurRadius(F)V

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alphaView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XStateBarView;->addView(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XStateBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized getBlurRadius(I)V
    .locals 2

    monitor-enter p0

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 72
    :cond_1
    :try_start_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->radius:F

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    .line 73
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->alpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public varargs bindScrollableView([Landroid/view/View;)V
    .locals 5

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    return-void

    .line 48
    :cond_0
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    .line 50
    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$sjoBQtezXodP1sFeblFyEml1y8Y;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$sjoBQtezXodP1sFeblFyEml1y8Y;-><init>(Lcom/xiaopeng/xui/widget/XStateBarView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    return-void
.end method

.method public synthetic lambda$bindScrollableView$0$XStateBarView(Landroid/view/View;IIII)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->scrollableView:[Landroid/view/View;

    array-length p2, p1

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p4, p2, :cond_0

    aget-object v0, p1, p4

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iput p5, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    .line 56
    iget p1, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->y:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XStateBarView;->updateView(I)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scrollY: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XStateBarView"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateView$1$XStateBarView()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStateBarView;->realtimeBlurView:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    return-void
.end method

.method public updateView(I)V
    .locals 3

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

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$SHdfysB7vy7xMWZs1LnLphj-5mQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XStateBarView$SHdfysB7vy7xMWZs1LnLphj-5mQ;-><init>(Lcom/xiaopeng/xui/widget/XStateBarView;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
