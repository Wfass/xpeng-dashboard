.class public abstract Lcom/xiaopeng/xui/widget/XTextInput;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTextInput.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private abQ:Lcom/xiaopeng/vui/commons/c;

.field protected ahC:Landroid/widget/ImageButton;

.field protected ahD:Landroid/widget/TextView;

.field protected ahE:Landroid/view/View;

.field protected ahF:Z

.field protected ahG:Z

.field protected ahH:I

.field protected ahI:I

.field protected ahJ:I

.field protected ahK:I

.field protected ahL:I

.field protected ahM:I

.field protected mEditText:Landroid/widget/EditText;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XTextInput:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 66
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 67
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_reset_enabled:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 68
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_error_enabled:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 69
    nop

    .line 70
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_appearance:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 71
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_appearance:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_0

    .line 73
    :cond_0
    move v2, v3

    .line 74
    :goto_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_max_length:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_edit_max_length:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_1

    .line 77
    :cond_1
    move v4, v3

    .line 78
    :goto_1
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_android_inputType:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_android_inputType:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    goto :goto_2

    .line 81
    :cond_2
    move v5, v3

    :goto_2
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_normal_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahH:I

    .line 82
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_focus_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahI:I

    .line 83
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTextInput_input_error_color:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahJ:I

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->nL()V

    .line 88
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XTextInput;->setResetEnable(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTextInput;->setErrorEnable(Z)V

    .line 90
    if-lez v2, :cond_3

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAppearance(I)V

    .line 93
    :cond_3
    if-lez v4, :cond_4

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 p4, 0x1

    new-array p4, p4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p4, v0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 96
    :cond_4
    if-lez v5, :cond_5

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/xiaopeng/xui/d/e;->j(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    new-instance p4, Lcom/xiaopeng/xui/widget/XTextInput$1;

    invoke-direct {p4, p0}, Lcom/xiaopeng/xui/widget/XTextInput$1;-><init>(Lcom/xiaopeng/xui/widget/XTextInput;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditHint(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XTextInput;->setEditContent(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->rw()V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTextInput;)Lcom/xiaopeng/vui/commons/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->abQ:Lcom/xiaopeng/vui/commons/c;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 247
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 249
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 250
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XTextInput;->a(Landroid/view/ViewGroup;Z)V

    .line 252
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/XTextInput;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method private hideError()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahD:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method private rH()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->rG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahD:Landroid/widget/TextView;

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

.method private rw()V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahH:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahK:I

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahI:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahL:I

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahJ:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahM:I

    .line 208
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahD:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 288
    return-void
.end method

.method public b(ZZ)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 241
    if-eqz p2, :cond_0

    .line 242
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTextInput;->a(Landroid/view/ViewGroup;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

.method protected abstract nL()V
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->rw()V

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 304
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 292
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    if-ne p1, p2, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 295
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 263
    iget-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahF:Z

    if-nez p2, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->abQ:Lcom/xiaopeng/vui/commons/c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->abQ:Lcom/xiaopeng/vui/commons/c;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/vui/commons/c;->b(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    .line 276
    return-void

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->abQ:Lcom/xiaopeng/vui/commons/c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->abQ:Lcom/xiaopeng/vui/commons/c;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/vui/commons/c;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 283
    :cond_4
    :goto_0
    return-void
.end method

.method public rG()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahG:Z

    return v0
.end method

.method public setEditContent(I)V
    .locals 1
    .param p1    # I
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

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setEditHint(I)V
    .locals 1
    .param p1    # I
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

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTextInput;->b(ZZ)V

    .line 237
    return-void
.end method

.method public setErrorEnable(Z)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahG:Z

    if-eq v0, p1, :cond_1

    .line 175
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahG:Z

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahD:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->updateEditTextBackground()V

    .line 179
    :cond_1
    return-void
.end method

.method public setErrorMsg(Ljava/lang/CharSequence;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->rG()Z

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

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 132
    return-void
.end method

.method public setMaxLength(I)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    return-void
.end method

.method public setResetEnable(Z)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahF:Z

    if-eq v0, p1, :cond_1

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahF:Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahC:Landroid/widget/ImageButton;

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

    .line 163
    :cond_1
    return-void
.end method

.method updateEditTextBackground()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahE:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTextInput;->rH()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahM:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahL:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTextInput;->ahK:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    :goto_0
    return-void
.end method
