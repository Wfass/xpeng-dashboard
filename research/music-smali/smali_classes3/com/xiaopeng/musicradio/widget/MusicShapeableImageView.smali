.class public Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;
.super Lajq;
.source "MusicShapeableImageView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field protected a:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lajq;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lajq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 25
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lajq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Lajq;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lajq;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Lajq;->onDetachedFromWindow()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    instance-of v1, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 87
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameIndex()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lajq;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lajq;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 99
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lajq;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->a:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->c(I)V

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setVuiImageResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lajq;->setSelected(Z)V

    .line 74
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lajq;->setVisibility(I)V

    .line 69
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/musicradio/widget/MusicShapeableImageView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
