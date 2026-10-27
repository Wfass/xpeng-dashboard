.class public Lcom/xiaopeng/xui/widget/toggle/XTextToggle;
.super Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;
.source "XTextToggle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContentTextView:Landroid/widget/CheckedTextView;

.field private mDrawableStartResId:I

.field private mTextColorResId:I

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill_TextToggle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    sget v0, Lcom/xiaopeng/xpui/R$style;->XToggleLayout_Fill_TextToggle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 47
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textSize:I

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 50
    .local v2, "textSize":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textSize:I

    invoke-static {v1, v3}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v3

    .line 51
    .local v3, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v5, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$i_pFBXkvhpm2MTmIiwcFb8dK81E;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$i_pFBXkvhpm2MTmIiwcFb8dK81E;-><init>(Lcom/xiaopeng/xui/widget/toggle/XTextToggle;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 56
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textColor:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 57
    .local v4, "colorStateList":Landroid/content/res/ColorStateList;
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textColor:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextColorResId:I

    .line 58
    new-instance v5, Landroid/widget/CheckedTextView;

    invoke-direct {v5, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    .line 59
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/CheckedTextView;->setTextSize(IF)V

    .line 61
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 62
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v7, v5}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawableStart:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 67
    .local v7, "drawableStart":Landroid/graphics/drawable/Drawable;
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawablePadding:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 68
    .local v8, "drawablePadding":I
    if-eqz v7, :cond_1

    .line 69
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v10, v10}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v9, v8}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 72
    :cond_1
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_drawableStart:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mDrawableStartResId:I

    .line 74
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textOn:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    .line 75
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextToggle_android_textOff:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->syncTextState()V

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/toggle/XTextToggle;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 1
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method private syncTextState()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->isChecked()Z

    move-result v0

    .line 136
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 118
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setChecked(Z)V

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->syncTextState()V

    .line 120
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOff:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextOn:Ljava/lang/CharSequence;

    .line 96
    return-void
.end method

.method protected updateThemeResource()V
    .locals 3

    .line 124
    iget v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextColorResId:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mTextColorResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mDrawableStartResId:I

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mContentTextView:Landroid/widget/CheckedTextView;

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->mDrawableStartResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->updateThemeResource()V

    .line 132
    return-void
.end method
