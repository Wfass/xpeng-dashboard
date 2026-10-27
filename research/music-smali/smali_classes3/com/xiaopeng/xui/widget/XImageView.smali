.class public Lcom/xiaopeng/xui/widget/XImageView;
.super Landroidx/appcompat/widget/o;
.source "XImageView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field protected mImgCorner:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 54
    :cond_0
    sget-object v0, Lbyg$n;->XImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p3, Lbyg$n;->XImageView_img_corner:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    if-lez p1, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImgCorner(I)V

    .line 60
    :cond_1
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->releaseVui()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/o;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroidx/appcompat/widget/o;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/o;->onVisibilityChanged(Landroid/view/View;I)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setEnabled(Z)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->c(I)V

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiImageResource(I)V

    :cond_2
    return-void
.end method

.method public setImgCorner(I)V
    .locals 1

    .line 64
    iput p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    .line 65
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 67
    iget v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setClipToOutline(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setSelected(Z)V

    .line 125
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/widget/o;->setVisibility(I)V

    .line 119
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
