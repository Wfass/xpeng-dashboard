.class public abstract Lcom/xiaopeng/xui/widget/XTextInput;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


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

.field private mVuiEngine:Lbxu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    sget-object p3, Lbyg$n;->XTextInput:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lbyg$n;->XTextInput_input_edit_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 70
    sget p3, Lbyg$n;->XTextInput_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 71
    sget p4, Lbyg$n;->XTextInput_input_reset_enabled:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 72
    sget v1, Lbyg$n;->XTextInput_input_error_enabled:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 74
    sget v2, Lbyg$n;->XTextInput_input_edit_appearance:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 75
    sget v2, Lbyg$n;->XTextInput_input_edit_appearance:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 78
    :goto_0
    sget v4, Lbyg$n;->XTextInput_input_edit_max_length:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    sget v4, Lbyg$n;->XTextInput_input_edit_max_length:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    .line 82
    :goto_1
    sget v5, Lbyg$n;->XTextInput_android_inputType:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    sget v5, Lbyg$n;->XTextInput_android_inputType:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v3

    .line 85
    :goto_2
    sget v6, Lbyg$n;->XTextInput_input_normal_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormalId:I

    .line 86
    sget v6, Lbyg$n;->XTextInput_input_focus_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocusId:I

    .line 87
    sget v6, Lbyg$n;->XTextInput_input_error_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorErrorId:I

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->initView()V

    .line 92
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XTextInput;->setResetEnable(Z)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTextInput;->setErrorEnable(Z)V

    if-lez v2, :cond_3

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAppearance(I)V

    :cond_3
    if-lez v4, :cond_4

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 p4, 0x1

    new-array p4, p4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p4, v0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    if-lez v5, :cond_5

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 105
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XInputUtils;->ignoreHiddenInput(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    new-instance p4, Lcom/xiaopeng/xui/widget/XTextInput$1;

    invoke-direct {p4, p0}, Lcom/xiaopeng/xui/widget/XTextInput$1;-><init>(Lcom/xiaopeng/xui/widget/XTextInput;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditHint(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditContent(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->initColor()V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextInput$_4O2FjyxZahSwBZV0buzwI40ups;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTextInput$_4O2FjyxZahSwBZV0buzwI40ups;-><init>(Lcom/xiaopeng/xui/widget/XTextInput;)V

    invoke-virtual {p1, p2}, Lapr;->b(Lapr$a;)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XTextInput;)Lbxu;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method private hideError()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initColor()V
    .locals 3

    .line 226
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

    .line 227
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

    .line 228
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

    return-void
.end method

.method private isErrorShow()Z
    .locals 1

    .line 246
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

    const/4 v0, 0x0

    .line 275
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 277
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 278
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XTextInput;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 280
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 156
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

    .line 191
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    return v0
.end method

.method public isResetEnable()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    return v0
.end method

.method public synthetic lambda$new$0$XTextInput()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->initColor()V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 321
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    if-ne p1, p2, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 292
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    if-nez p2, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-interface {p1, p2, p3}, Lbxu;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    return-void

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    invoke-interface {p1, p2, p3}, Lbxu;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public playDeleteSound()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isIsV3CoverV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEditContent(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    return-void
.end method

.method public setEditContent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditHint(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method public setEditHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;->setEnabled(ZZ)V

    .line 258
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 260
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 262
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 270
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setErrorEnable(Z)V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    if-eq v0, p1, :cond_1

    .line 196
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorEnable:Z

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mErrorTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    :cond_1
    return-void
.end method

.method public setErrorMsg(Ljava/lang/CharSequence;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isErrorEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTextInput;->setErrorEnable(Z)V

    .line 209
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->hideError()V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setResetEnable(Z)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    if-eq v0, p1, :cond_1

    .line 181
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetEnable:Z

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mResetView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setVuiScene(Lbxu;Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mVuiEngine:Lbxu;

    .line 331
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method updateEditTextBackground()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->isErrorShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorError:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorFocus:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    return-void
.end method
