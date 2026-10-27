.class Lcom/xiaopeng/libtheme/ThemeWrapper$6;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;->startViewBackgroundTransition(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 625
    :cond_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    sget-wide v1, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$view:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$6;)V

    sget-wide v5, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    div-long/2addr v5, v3

    long-to-int v2, v5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 636
    sget-boolean v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startViewBackgroundTransition e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
