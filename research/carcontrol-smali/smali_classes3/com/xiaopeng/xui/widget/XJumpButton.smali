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

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_drawable:I

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 39
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_drawable_direction:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 40
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_max_line:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 41
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_custom_layout:I

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 42
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_sub:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v2, p4, :cond_3

    if-eqz v0, :cond_2

    const/4 p4, 0x1

    if-eq v0, p4, :cond_1

    const/4 p4, 0x2

    if-eq v0, p4, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_right_icon:I

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_top_icon:I

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_jump_ui_button_left_icon:I

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-virtual {p4, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XJumpButton;->initView()V

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XJumpButton;->setTitleMaxLine(I)V

    .line 65
    :cond_4
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XJumpButton;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XJumpButton;->setTextSub(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XJumpButton;->setDrawable(I)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 69
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 70
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XJumpButton_jump_button_text_sub:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 72
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
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

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XJumpButton;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XJumpButton;->getVuiLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XJumpButton;->setVuiLabel(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    return-void
.end method

.method public setDrawable(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->imageView:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->imageView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSub(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textSubView:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public setTitleMaxLine(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;->textView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    return-void
.end method
