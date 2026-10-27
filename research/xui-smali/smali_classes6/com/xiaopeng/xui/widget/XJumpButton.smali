.class public Lcom/xiaopeng/xui/widget/XJumpButton;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "XJumpButton.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# instance fields
.field private imageView:Lcom/xiaopeng/xui/widget/XImageView;

.field private textSubView:Lcom/xiaopeng/xui/widget/XTextView;

.field private textView:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_drawable:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 39
    .local v1, "drawableId":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_drawable_direction:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 40
    .local v3, "direction":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_max_line:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 41
    .local v4, "maxLine":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_custom_layout:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 42
    .local v5, "customLayoutId":I
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "text":Ljava/lang/String;
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_sub:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "textSub":Ljava/lang/String;
    if-ne v5, v2, :cond_0

    .line 46
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v8, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_right_icon:I

    invoke-virtual {v2, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v8, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_top_icon:I

    invoke-virtual {v2, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    goto :goto_0

    .line 48
    :pswitch_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v8, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_left_icon:I

    invoke-virtual {v2, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    nop

    .line 55
    :goto_0
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XJumpButton;->initView()V

    .line 62
    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XJumpButton;->setTitleMaxLine(I)V

    .line 65
    :cond_1
    invoke-virtual {p0, v6}, Lcom/xiaopeng/xui/widget/XJumpButton;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v7}, Lcom/xiaopeng/xui/widget/XJumpButton;->setTextSub(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XJumpButton;->setDrawable(I)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v2

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text:I

    invoke-interface {v2, p1, v8, v0, v9}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 70
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v2

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_sub:I

    invoke-interface {v2, p1, v8, v0, v9}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 1

    .line 76
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_text_image:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->imageView:Lcom/xiaopeng/xui/widget/XImageView;

    .line 77
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_button_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    .line 78
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_button_text_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_btn_real_secoundary_selector:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->setBackgroundResource(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->setClipToOutline(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XJumpButton;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->setVuiLabel(Ljava/lang/String;)V

    .line 115
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 121
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 123
    return-void
.end method

.method public setDrawable(I)V
    .locals 2
    .param p1, "drawableId"    # I

    .line 103
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->imageView:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->imageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 108
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setTextSub(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public setTitleMaxLine(I)V
    .locals 1
    .param p1, "maxLineNum"    # I

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    .line 85
    return-void
.end method
