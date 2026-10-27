.class Lcom/xiaopeng/libtheme/ThemeWrapper$4;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;->startTextColorTransition(Landroid/widget/TextView;ILandroid/content/res/ColorStateList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endColor:Landroid/content/res/ColorStateList;

.field final synthetic val$startColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$view:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$endColor:Landroid/content/res/ColorStateList;

    iput p3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$startColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$view:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$endColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$startColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$endColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 563
    .local v0, "colorAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$4$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$4$1;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    sget-wide v1, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    long-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 571
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 572
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$view:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$4;)V

    sget-wide v5, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0    # "colorAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ThemeWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTextColorAnimation e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
