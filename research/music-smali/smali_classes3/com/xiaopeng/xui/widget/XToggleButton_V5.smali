.class public Lcom/xiaopeng/xui/widget/XToggleButton_V5;
.super Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;
.source "XToggleButton_V5.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XToggleButton_V5"


# instance fields
.field private mIconDr:Landroid/graphics/drawable/Drawable;

.field private final mIconRes:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/view/View;

.field private mSubtitleTextOff:Ljava/lang/CharSequence;

.field private mSubtitleTextOn:Ljava/lang/CharSequence;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTitleTextView:Landroid/widget/TextView;

.field private pressAnimEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    sget v0, Lbyg$c;->toggleButtonV5Style:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->pressAnimEnable:Z

    .line 54
    sget-object v0, Lbyg$n;->XToggleButton_V5:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 55
    sget p3, Lbyg$n;->XToggleButton_V5_toggle_content_layout:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 56
    sget v0, Lbyg$n;->XToggleButton_V5_toggle_icon:I

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconRes:I

    .line 58
    sget p4, Lbyg$n;->XToggleButton_V5_android_textOn:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOn:Ljava/lang/CharSequence;

    .line 59
    sget p4, Lbyg$n;->XToggleButton_V5_android_textOff:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOff:Ljava/lang/CharSequence;

    .line 60
    sget p4, Lbyg$n;->XToggleButton_V5_toggle_subtitleOn:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOn:Ljava/lang/CharSequence;

    .line 61
    sget p4, Lbyg$n;->XToggleButton_V5_toggle_subtitleOff:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOff:Ljava/lang/CharSequence;

    .line 62
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 63
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p4

    sget v0, Lbyg$n;->XToggleButton_V5_android_textOn:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOn:Ljava/lang/CharSequence;

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOn:Ljava/lang/CharSequence;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p4

    sget v0, Lbyg$n;->XToggleButton_V5_android_textOff:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOff:Ljava/lang/CharSequence;

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOff:Ljava/lang/CharSequence;

    .line 67
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p4

    sget v0, Lbyg$n;->XToggleButton_V5_toggle_subtitleOn:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOn:Ljava/lang/CharSequence;

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOn:Ljava/lang/CharSequence;

    .line 69
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p4

    sget v0, Lbyg$n;->XToggleButton_V5_toggle_subtitleOff:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOff:Ljava/lang/CharSequence;

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/xiaopeng/xui/lang/LangPresenter;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOff:Ljava/lang/CharSequence;

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_2

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget p2, Lbyg$h;->toggle_title:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    .line 76
    sget p2, Lbyg$h;->toggle_subtitle:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    .line 77
    sget p2, Lbyg$h;->toggle_ic:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconView:Landroid/widget/ImageView;

    .line 78
    sget p2, Lbyg$h;->toggle_indicator:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIndicatorView:Landroid/view/View;

    .line 79
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconRes:I

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lds;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    goto :goto_0

    :cond_2
    const-string p2, "XToggleButton_V5"

    const-string p3, "layout not set!"

    .line 84
    invoke-static {p2, p3}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;-><init>(Lcom/xiaopeng/xui/widget/XToggleButton_V5;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lapr;->b(Lapr$a;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XToggleButton_V5;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/XToggleButton_V5;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconRes:I

    return p0
.end method

.method private syncTextState()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOn:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOff:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOn:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOff:Ljava/lang/CharSequence;

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    instance-of v4, v3, Landroid/widget/Checkable;

    if-eqz v4, :cond_2

    .line 121
    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    instance-of v4, v3, Landroid/widget/Checkable;

    if-eqz v4, :cond_3

    .line 124
    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->drawableStateChanged()V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->pressAnimEnable:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->setChecked(Z)V

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconDr:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->pressAnimEnable:Z

    return-void
.end method

.method public setSubtitleOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOff:Ljava/lang/CharSequence;

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    return-void
.end method

.method public setSubtitleOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mSubtitleTextOn:Ljava/lang/CharSequence;

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOff:Ljava/lang/CharSequence;

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->mTextOn:Ljava/lang/CharSequence;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->syncTextState()V

    return-void
.end method
