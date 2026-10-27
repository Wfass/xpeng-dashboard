.class public Lcom/xiaopeng/xui/widget/XGroupHeader;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XGroupHeader.java"


# static fields
.field private static final LOCATION_LEFT:I = 0x0

.field private static final LOCATION_RIGHT:I = 0x1

.field private static final MODE_BUTTON:I = 0x2

.field private static final MODE_CUSTOM:I = 0x4

.field private static final MODE_ICON:I = 0x1

.field private static final MODE_LOADING:I = 0x3

.field private static final MODE_NONE:I


# instance fields
.field private mActionMode:I

.field private mRightView:Landroid/view/View;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action_location:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 60
    .local v1, "location":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_right:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$layout;->x_groupheader:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->initView()V

    .line 68
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action_mode:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 72
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 73
    .local v4, "action":I
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 74
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text_size:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 75
    .local v5, "size":F
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text_size:I

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v2

    .line 78
    .local v2, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v6, :cond_1

    .line 79
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v7, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;

    invoke-direct {v7, p0, v2}, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;-><init>(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 83
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text:I

    invoke-interface {v6, p1, v7, v0, v8}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 88
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method private initView()V
    .locals 1

    .line 125
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_groupheader_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 1
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    .line 81
    return-void
.end method

.method private setView(I)V
    .locals 3
    .param p1, "action"    # I

    .line 94
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    if-lez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_loading:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 114
    goto :goto_0

    .line 105
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_button:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 107
    if-lez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_icon:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 100
    if-lez p1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setIcon(I)V

    goto :goto_0

    .line 96
    :pswitch_4
    nop

    .line 122
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getRightView()Landroid/view/View;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 171
    if-eqz p1, :cond_0

    .line 172
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->removeView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public setButtonText(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 149
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 152
    :cond_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 156
    :goto_0
    return-void
.end method

.method public setCustom(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 133
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 136
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 139
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 142
    :cond_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 146
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public showLoading(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 159
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v3

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    iput v2, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 164
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_0
    return-void
.end method
