.class public Lcom/xiaopeng/xui/widget/XImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
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
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 54
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XImageView_img_corner:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget v1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    if-lez v1, :cond_1

    .line 58
    iget v1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImgCorner(I)V

    .line 60
    :cond_1
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->releaseVui()V

    .line 130
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 112
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    .line 48
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 169
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XImageView;->onVisibilityChangedThemeRefresh(I)V

    .line 171
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setEnabled(Z)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    goto :goto_0

    .line 139
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setImageResource(I)V

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiImageResource(I)V

    .line 88
    :cond_2
    return-void
.end method

.method public setImgCorner(I)V
    .locals 2
    .param p1, "corner"    # I

    .line 64
    iput p1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    .line 65
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 66
    .local v0, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 67
    iget v1, p0, Lcom/xiaopeng/xui/widget/XImageView;->mImgCorner:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setClipToOutline(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->invalidate()V

    .line 71
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setSelected(Z)V

    .line 123
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiSelected(Landroid/view/View;Z)V

    .line 124
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiVisibility(Landroid/view/View;I)V

    .line 118
    return-void
.end method
