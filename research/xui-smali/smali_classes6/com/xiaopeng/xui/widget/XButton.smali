.class public Lcom/xiaopeng/xui/widget/XButton;
.super Landroidx/appcompat/widget/AppCompatButton;
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
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private getDrawableRadio(Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 169
    return v0

    .line 171
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 172
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 173
    .local v0, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 174
    .end local v0    # "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    .line 175
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 176
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XButton;->getDrawableRadio(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    return v1

    .line 178
    .end local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XButton_use_default_focus_style:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 62
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$bQLWIPstTakjCA8X4JBkR4xO3_s;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$bQLWIPstTakjCA8X4JBkR4xO3_s;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v1

    invoke-interface {v1, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 76
    :cond_2
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "XButton change theme reset backgroundPadding"

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

    .line 70
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$uXLg_x4m1n1QKasdJPmGt7YWyKU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XButton$uXLg_x4m1n1QKasdJPmGt7YWyKU;-><init>(Lcom/xiaopeng/xui/widget/XButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public backgroundPadding(IIII)V
    .locals 1
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mRectBgPadding:Landroid/graphics/Rect;

    .line 80
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    .line 150
    :cond_0
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->releaseVui()V

    .line 130
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 112
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 154
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_color_primary:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->getDrawableRadio(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 160
    .local v0, "radio":I
    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v3, -0x3f400000    # -6.0f

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XButton;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    int-to-float v5, v1

    add-int/lit8 v1, v0, 0x3

    int-to-float v6, v1

    add-int/lit8 v1, v0, 0x3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XButton;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 162
    .end local v0    # "radio":I
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    .line 165
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 223
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XButton;->onVisibilityChangedThemeRefresh(I)V

    .line 225
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 184
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 204
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 212
    :cond_0
    return-void
.end method

.method public setDefaultFocusStyle(Z)V
    .locals 0
    .param p1, "defaultFocusStyle"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XButton;->defaultFocusStyle:Z

    .line 88
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 134
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    goto :goto_0

    .line 139
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0
    .param p1, "pressAnimEnable"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XButton;->pressAnimEnable:Z

    .line 84
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSelected(Z)V

    .line 123
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiSelected(Landroid/view/View;Z)V

    .line 124
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 192
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setTextColor(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 117
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiVisibility(Landroid/view/View;I)V

    .line 118
    return-void
.end method
