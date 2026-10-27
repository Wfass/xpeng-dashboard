.class Lcom/xiaopeng/libtheme/ThemeWrapper$5;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;->startImageDrawableTransition(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$view:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 578
    :cond_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$startDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    sget-wide v1, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$view:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$5;)V

    sget-wide v5, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    div-long/2addr v5, v3

    long-to-int v2, v5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_1
    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    sget-boolean v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ThemeWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startImageDrawableTransition e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    :goto_0
    return-void
.end method
