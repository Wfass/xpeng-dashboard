.class public Lcom/xiaopeng/xui/widget/XButton;
.super Landroidx/appcompat/widget/f;
.source "XButton.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private defaultFocusStyle:Z

.field private mRectBgPadding:Landroid/graphics/Rect;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field private final paint:Landroid/graphics/Paint;

.field private pressAnimEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getDrawableRadio(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 174
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 175
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 176
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    .line 177
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 178
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->getDrawableRadio(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    :cond_0
    sget-object p3, Lbyg$n;->XButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 59
    sget v0, Lbyg$n;->XButton_use_default_focus_style:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    .line 60
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 63
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 64
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p3

    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$JchmD1Bm-TOvp2k_Mn3Y6M8ndeY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$JchmD1Bm-TOvp2k_Mn3Y6M8ndeY;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {p3, v0}, Lapr;->a(Lapr$a;)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 73
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public backgroundPadding(IIII)V
    .locals 0

    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroidx/appcompat/widget/f;->drawableStateChanged()V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->releaseVui()V

    return-void
.end method

.method public synthetic lambda$init$1$XButton()V
    .locals 1

    .line 64
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$W4DwNpm_x2Hg_uCeAR1B-dyN6Nk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$W4DwNpm_x2Hg_uCeAR1B-dyN6Nk;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$XButton()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const-string v0, "XButton change theme reset backgroundPadding"

    .line 66
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->logD(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/f;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->vuiViewAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroidx/appcompat/widget/f;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbyg$e;->x_color_primary:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lds;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->getDrawableRadio(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v3, -0x3f400000    # -6.0f

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    int-to-float v5, v1

    add-int/lit8 v0, v0, 0x3

    int-to-float v7, v0

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 164
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 225
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/f;->onVisibilityChanged(Landroid/view/View;I)V

    .line 226
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setBackgroundResource(I)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->b(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/f;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->b(IIII)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/f;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lapr;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setDefaultFocusStyle(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setEnabled(Z)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setSelected(Z)V

    .line 125
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 194
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setTextColor(I)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lapr;->a(I)V

    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lapr;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setVisibility(I)V

    .line 119
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
