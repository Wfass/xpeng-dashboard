.class public abstract Lcom/xiaopeng/xui/widget/XTextInput;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field protected mColorError:I

.field protected mColorErrorId:I

.field protected mColorFocus:I

.field protected mColorFocusId:I

.field protected mColorNormal:I

.field protected mColorNormalId:I

.field protected mEditText:Landroid/widget/EditText;

.field protected mErrorEnable:Z

.field protected mErrorTextView:Landroid/widget/TextView;

.field protected mResetEnable:Z

.field protected mResetView:Landroid/widget/ImageButton;

.field private mSceneId:Ljava/lang/String;

.field protected mStatusView:Landroid/view/View;

.field private mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object v0, p0

    .line 62
    invoke-direct/range {p0 .. p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XTextInput:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_hint:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 66
    .local v4, "hint":Ljava/lang/CharSequence;
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_text:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 67
    .local v5, "text":Ljava/lang/CharSequence;
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_reset_enabled:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 68
    .local v6, "resetEnable":Z
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_error_enabled:I

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 69
    .local v8, "errorEnable":Z
    const/4 v9, -0x1

    .line 70
    .local v9, "editAppearance":I
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_appearance:I

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_0

    .line 71
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_appearance:I

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 73
    :cond_0
    const/4 v10, -0x1

    .line 74
    .local v10, "maxLength":I
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_max_length:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 75
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_max_length:I

    invoke-virtual {v1, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 77
    :cond_1
    const/4 v12, -0x1

    .line 78
    .local v12, "inputType":I
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_android_inputType:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 79
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_android_inputType:I

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 81
    :cond_2
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_normal_color:I

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormalId:I

    .line 82
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_focus_color:I

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocusId:I

    .line 83
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_error_color:I

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorErrorId:I

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->initView()V

    .line 88
    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XTextInput;->setResetEnable(Z)V

    .line 89
    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XTextInput;->setErrorEnable(Z)V

    .line 90
    if-lez v9, :cond_3

    .line 91
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setTextAppearance(I)V

    .line 93
    :cond_3
    if-lez v10, :cond_4

    .line 94
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/text/InputFilter;

    new-instance v14, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v14, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v14, v13, v7

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 96
    :cond_4
    if-lez v12, :cond_5

    .line 97
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 101
    :cond_5
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {v11, v7}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 104
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-static {v7}, Lcom/xiaopeng/xui/utils/XInputUtils;->ignoreHiddenInput(Landroid/view/View;)V

    .line 105
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    new-instance v11, Lcom/xiaopeng/xui/widget/XTextInput$1;

    invoke-direct {v11, v0}, Lcom/xiaopeng/xui/widget/XTextInput$1;-><init>(Lcom/xiaopeng/xui/widget/XTextInput;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditHint(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditContent(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->initColor()V

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/IVuiEngine;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTextInput;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTextInput;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method private hideError()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method private initColor()V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormalId:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormal:I

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocusId:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocus:I

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorErrorId:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorError:I

    .line 208
    return-void
.end method

.method private isErrorShow()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isErrorEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 249
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 250
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XTextInput;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 252
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 288
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 259
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initView()V
.end method

.method public isErrorEnable()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    return v0
.end method

.method public isResetEnable()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 299
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->initColor()V

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 304
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 295
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 263
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 276
    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    .line 283
    :cond_4
    :goto_0
    return-void
.end method

.method public setEditContent(I)V
    .locals 1
    .param p1, "resid"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 152
    return-void
.end method

.method public setEditContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setEditHint(I)V
    .locals 1
    .param p1, "resid"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 144
    return-void
.end method

.method public setEditHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;->setEnabled(ZZ)V

    .line 237
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 240
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 241
    if-eqz p2, :cond_0

    .line 242
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public setErrorEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 174
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    if-eq v0, p1, :cond_1

    .line 175
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 179
    :cond_1
    return-void
.end method

.method public setErrorMsg(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isErrorEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextInput;->setErrorEnable(Z)V

    .line 188
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->hideError()V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 194
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 132
    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    return-void
.end method

.method public setResetEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    if-eq v0, p1, :cond_1

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 163
    :cond_1
    return-void
.end method

.method public setVuiScene(Lcom/xiaopeng/vui/commons/IVuiEngine;Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p2, "sceneId"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 311
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    .line 312
    return-void
.end method

.method updateEditTextBackground()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isErrorShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorError:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocus:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormal:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    :goto_0
    return-void
.end method
