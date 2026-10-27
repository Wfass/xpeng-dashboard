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

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sget-object p3, Lbyg$n;->XGroupHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 58
    sget p3, Lbyg$n;->XGroupHeader_group_header_action_location:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lbyg$j;->x_groupheader_right:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lbyg$j;->x_groupheader:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->initView()V

    .line 68
    sget p3, Lbyg$n;->XGroupHeader_group_header_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget p3, Lbyg$n;->XGroupHeader_group_header_action_mode:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 72
    sget p3, Lbyg$n;->XGroupHeader_group_header_action:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 73
    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 74
    sget p3, Lbyg$n;->XGroupHeader_group_header_text_size:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    sget p3, Lbyg$n;->XGroupHeader_group_header_text_size:I

    invoke-static {p2, p3}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 78
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p4, :cond_1

    .line 79
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;

    invoke-direct {v0, p0, p3}, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;-><init>(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {p4, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 83
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 84
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    sget v0, Lbyg$n;->XGroupHeader_group_header_text:I

    invoke-interface {p3, p1, p4, p2, v0}, Lcom/xiaopeng/xui/lang/LangPresenter;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 125
    sget v0, Lbyg$h;->x_groupheader_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    return-void
.end method

.method private setView(I)V
    .locals 3

    .line 94
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lbyg$j;->x_groupheader_action_loading:I

    invoke-virtual {p1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbyg$j;->x_groupheader_action_button:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    if-lez p1, :cond_4

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbyg$j;->x_groupheader_action_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    if-lez p1, :cond_4

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setIcon(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getRightView()Landroid/view/View;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    return-object v0
.end method

.method public synthetic lambda$new$0$XGroupHeader(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->refreshTextSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setButtonText(I)V
    .locals 2

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

    :goto_0
    return-void
.end method

.method public setCustom(I)V
    .locals 1

    const/4 v0, 0x4

    .line 133
    iput v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mActionMode:I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 2

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

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLoading(Z)V
    .locals 4

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

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
