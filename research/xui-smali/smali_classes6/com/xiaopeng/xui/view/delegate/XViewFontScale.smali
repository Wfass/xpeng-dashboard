.class public Lcom/xiaopeng/xui/view/delegate/XViewFontScale;
.super Ljava/lang/Object;
.source "XViewFontScale.java"


# instance fields
.field private mComplexToFloat:F

.field private mFontScale:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;F)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "complexToFloat"    # F

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    .line 80
    iput p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mComplexToFloat:F

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    .line 86
    return-void
.end method

.method private checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "from"    # Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 94
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mFontScale:F

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mComplexToFloat:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    :cond_0
    return-void
.end method

.method static create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewFontScale;
    .locals 12
    .param p0, "view"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 24
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 25
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 29
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XFontSize:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 31
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XFontSize_x_dynamic_font_scale_change_enable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 32
    .local v3, "isDynamicFontSizeChangeEnable":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    if-nez v3, :cond_1

    .line 34
    return-object v0

    .line 37
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "isDynamicFontSizeChangeEnable":Z
    :cond_1
    const/4 v2, 0x0

    .line 38
    .local v2, "isTextSize":Z
    const/4 v3, 0x0

    .line 39
    .local v3, "textSizeUnit":I
    const/4 v5, 0x0

    .line 41
    .local v5, "complexToFloat":F
    new-array v6, v4, [I

    const v7, 0x1010095

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {v1, p1, v6, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 43
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 45
    .local v9, "value":Landroid/util/TypedValue;
    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    invoke-virtual {v9}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v3

    .line 47
    iget v10, v9, Landroid/util/TypedValue;->data:I

    invoke-static {v10}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    .line 48
    const/4 v2, 0x1

    .line 50
    .end local v9    # "value":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .end local v6    # "a":Landroid/content/res/TypedArray;
    if-nez v2, :cond_5

    .line 53
    new-array v6, v4, [I

    const v9, 0x1010034

    aput v9, v6, v8

    invoke-virtual {v1, p1, v6, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 55
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 56
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/4 v10, -0x1

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 57
    .local v11, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    if-eq v11, v10, :cond_3

    .line 59
    new-array v4, v4, [I

    aput v7, v4, v8

    invoke-virtual {v1, v11, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 61
    :cond_3
    if-eqz v9, :cond_5

    .line 62
    invoke-virtual {v9, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 63
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 64
    .local v4, "value":Landroid/util/TypedValue;
    invoke-virtual {v9, v8, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 65
    invoke-virtual {v4}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result v3

    .line 66
    iget v7, v4, Landroid/util/TypedValue;->data:I

    invoke-static {v7}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    .line 68
    .end local v5    # "complexToFloat":F
    .local v4, "complexToFloat":F
    move v5, v4

    .end local v4    # "complexToFloat":F
    .restart local v5    # "complexToFloat":F
    :cond_4
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v9    # "appearance":Landroid/content/res/TypedArray;
    .end local v11    # "ap":I
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 73
    new-instance v0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    invoke-direct {v0, p0, v5}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;-><init>(Landroid/widget/TextView;F)V

    return-object v0

    .line 75
    :cond_6
    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 89
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->checkFont(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 90
    return-void
.end method
