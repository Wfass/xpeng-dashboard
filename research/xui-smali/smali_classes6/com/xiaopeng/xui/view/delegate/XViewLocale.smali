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
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "hintId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    .line 63
    iput p2, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    .line 64
    iput p3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    .line 66
    return-void
.end method

.method private checkLocale(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "from"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "time":J
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 83
    .local v2, "locale":Landroid/os/LocaleList;
    iget-object v3, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    .line 85
    .local v3, "lastLocale":Landroid/os/LocaleList;
    const/4 v4, 0x0

    .line 86
    .local v4, "changed":Z
    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    const/4 v4, 0x1

    .line 88
    iput-object v2, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mLocales:Landroid/os/LocaleList;

    .line 89
    iget v5, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_0
    iget v5, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    if-eqz v5, :cond_1

    .line 93
    iget-object v5, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 96
    :cond_1
    const-string v5, "XViewLocale from %s, changed:%s ,textId %s , locale :%s, lastLocale:%s , time:%s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    .line 97
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    const/4 v7, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 96
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;
    .locals 10
    .param p0, "view"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 28
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 29
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XLocale:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XLocale_x_dynamic_locale_change_enable:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 35
    .local v2, "isDynamicChangeEnable":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    if-nez v2, :cond_1

    .line 37
    return-object v0

    .line 40
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "isDynamicChangeEnable":Z
    :cond_1
    const/4 v0, 0x0

    .line 41
    .local v0, "textId":I
    const/4 v1, 0x0

    .line 42
    .local v1, "hintId":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 43
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-virtual {v2, p1, v5, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 45
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_2

    .line 47
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 48
    .local v6, "attr":I
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 51
    .end local v6    # "attr":I
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 52
    .restart local v6    # "attr":I
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 55
    .end local v6    # "attr":I
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const-string v6, "XViewLocale textId %s, hintId%s,  %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    aput-object p0, v8, v4

    .line 56
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;-><init>(Landroid/widget/TextView;II)V

    return-object v3

    nop

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

    .line 102
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 77
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->checkLocale(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setHintId(I)V
    .locals 0
    .param p1, "hintId"    # I

    .line 73
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mHintId:I

    .line 74
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .param p1, "textId"    # I

    .line 69
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->mTextId:I

    .line 70
    return-void
.end method
