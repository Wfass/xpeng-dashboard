.class public Lcom/xiaopeng/xui/view/delegate/XViewLocale;
.super Ljava/lang/Object;
.source "XViewLocale.java"


# instance fields
.field private mHintId:I

.field private mLocales:Landroid/os/LocaleList;

.field private mTextId:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    .line 63
    iput p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    .line 64
    iput p3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method private checkLocale(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 7

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 83
    iget-object v2, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    .line 86
    invoke-virtual {v2, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    .line 89
    iget v3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    if-eqz v3, :cond_0

    .line 90
    iget-object v6, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_0
    iget v3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    if-eqz v3, :cond_1

    .line 93
    iget-object v6, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setHint(I)V

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 97
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, v4

    const/4 p2, 0x2

    iget v3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, p2

    const/4 p2, 0x3

    aput-object p1, v6, p2

    const/4 p1, 0x4

    aput-object v2, v6, p1

    const/4 p1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v6, p1

    const-string p1, "XViewLocale from %s, changed:%s ,textId %s , locale :%s, lastLocale:%s , time:%s"

    .line 96
    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method static create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XLocale:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XLocale_x_dynamic_locale_change_enable:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_1

    return-object v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 43
    fill-array-data v2, :array_0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_2

    .line 47
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 51
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 52
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move p2, p3

    move v0, p2

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    aput-object p0, p1, v1

    const-string p3, "XViewLocale textId %s, hintId%s,  %s"

    .line 56
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    invoke-direct {p1, p0, p2, v0}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;-><init>(Landroid/widget/TextView;II)V

    return-object p1

    :array_0
    .array-data 4
        0x101014f
        0x1010150
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->checkLocale(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "onConfigurationChanged"

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->checkLocale(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method public setHintId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    return-void
.end method

.method public setTextId(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    return-void
.end method
