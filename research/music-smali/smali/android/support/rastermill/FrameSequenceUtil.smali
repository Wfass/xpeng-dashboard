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

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->destroy()V

    :cond_0
    return-void
.end method

.method protected static destroy(Landroid/support/rastermill/FrameSequenceDrawable;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->destroy()V

    .line 72
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getFrameSequence()Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/support/rastermill/FrameSequence;)V

    :cond_0
    return-void
.end method

.method public static destroy(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public static destroy(Landroid/widget/ImageView;Z)V
    .locals 3

    .line 54
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->cancelTask(Landroid/widget/ImageView;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 56
    instance-of p1, p1, Landroid/support/rastermill/FrameSequenceDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 58
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->getKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 60
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceDrawable;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 62
    invoke-static {p1, v1}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/support/rastermill/FrameSequenceDrawable;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-static {p0, v0, v0}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequenceUtil;->init(Landroid/content/Context;Landroid/support/rastermill/FrameSequenceParams;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/support/rastermill/FrameSequenceParams;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceParams;->getDiskCacheFactory()Landroid/support/rastermill/cache/DiskCache$Factory;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 25
    new-instance p1, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;

    invoke-direct {p1, p0}, Landroid/support/rastermill/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    .line 27
    :cond_1
    invoke-static {p0, p1}, Landroid/support/rastermill/CacheEngine;->init(Landroid/content/Context;Landroid/support/rastermill/cache/DiskCache$Factory;)V

    return-void
.end method

.method public static pause(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1

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

    :cond_0
    return-void
.end method

.method public static pause(Landroid/widget/ImageView;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 141
    instance-of v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    .line 142
    check-cast p0, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceUtil;->pause(Landroid/support/rastermill/FrameSequenceDrawable;)V

    :cond_0
    return-void
.end method

.method public static resume(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1

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

    :cond_0
    return-void
.end method

.method public static resume(Landroid/widget/ImageView;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 166
    instance-of v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceUtil;->resume(Landroid/support/rastermill/FrameSequenceDrawable;)V

    :cond_0
    return-void
.end method

.method public static start(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1

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

    :cond_0
    return-void
.end method

.method public static start(Landroid/widget/ImageView;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 116
    instance-of v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    .line 117
    check-cast p0, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceUtil;->start(Landroid/support/rastermill/FrameSequenceDrawable;)V

    :cond_0
    return-void
.end method

.method public static stop(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1

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

    :cond_0
    return-void
.end method

.method public static stop(Landroid/widget/ImageView;)V
    .locals 1

    .line 89
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->cancelTask(Landroid/widget/ImageView;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 91
    instance-of v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceUtil;->stop(Landroid/support/rastermill/FrameSequenceDrawable;)V

    :cond_0
    return-void
.end method

.method public static with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;
    .locals 1

    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Landroid/support/rastermill/FrameSequenceController;

    invoke-direct {v0, p0}, Landroid/support/rastermill/FrameSequenceController;-><init>(Landroid/widget/ImageView;)V

    return-object v0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "imageView is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
