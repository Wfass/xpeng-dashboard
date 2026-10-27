.class public Landroid/support/rastermill/FrameSequenceUtil;
.super Ljava/lang/Object;
.source "FrameSequenceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static destroy(Landroid/support/rastermill/FrameSequence;)V
    .locals 1
    .param p0, "frameSequence"    # Landroid/support/rastermill/FrameSequence;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 78
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->destroy()V

    .line 81
    :cond_0
    return-void
.end method

.method protected static destroy(Landroid/support/rastermill/FrameSequenceDrawable;Ljava/lang/String;)V
    .locals 1
    .param p0, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "key"    # Ljava/lang/String;

    .line 69
    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->destroy()V

    .line 72
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getFrameSequence()Landroid/support/rastermill/FrameSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/support/rastermill/FrameSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static destroy(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;Z)V

    .line 45
    return-void
.end method

.method public static destroy(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "recycle"    # Z
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 54
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->cancelTask(Landroid/widget/ImageView;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 58
    .local v1, "frameSequenceDrawable":Landroid/support/rastermill/FrameSequenceDrawable;
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->getKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "assetName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 60
    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 62
    invoke-static {v1, v3}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/support/rastermill/FrameSequenceDrawable;Ljava/lang/String;)V

    .line 65
    .end local v1    # "frameSequenceDrawable":Landroid/support/rastermill/FrameSequenceDrawable;
    .end local v3    # "assetName":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v2, v2}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 16
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequenceUtil;->init(Landroid/content/Context;Landroid/support/rastermill/FrameSequenceParams;)V

    .line 17
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/support/rastermill/FrameSequenceParams;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/support/rastermill/FrameSequenceParams;

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "diskCacheFactory":Landroid/support/rastermill/cache/DiskCache$Factory;
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceParams;->getDiskCacheFactory()Landroid/support/rastermill/cache/DiskCache$Factory;

    move-result-object v0

    .line 24
    :cond_0
    if-nez v0, :cond_1

    .line 25
    new-instance v1, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;

    invoke-direct {v1, p0}, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 27
    :cond_1
    invoke-static {p0, v0}, Landroid/support/rastermill/CacheEngine;->init(Landroid/content/Context;Landroid/support/rastermill/cache/DiskCache$Factory;)V

    .line 28
    return-void
.end method

.method public static pause(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 152
    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->pause()V

    .line 157
    :cond_0
    return-void
.end method

.method public static pause(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v1, :cond_0

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceUtil;->pause(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static resume(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 177
    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->resume()V

    .line 182
    :cond_0
    return-void
.end method

.method public static resume(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceUtil;->resume(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public static start(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 127
    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 132
    :cond_0
    return-void
.end method

.method public static start(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v1, :cond_0

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceUtil;->start(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static stop(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 102
    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 107
    :cond_0
    return-void
.end method

.method public static stop(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 89
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->cancelTask(Landroid/widget/ImageView;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v1, :cond_0

    .line 92
    move-object v1, v0

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceUtil;->stop(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 32
    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Landroid/support/rastermill/FrameSequenceController;

    invoke-direct {v0, p0}, Landroid/support/rastermill/FrameSequenceController;-><init>(Landroid/widget/ImageView;)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "imageView is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
