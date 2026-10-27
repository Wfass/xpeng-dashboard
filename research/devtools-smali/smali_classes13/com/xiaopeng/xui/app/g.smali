.class public Lcom/xiaopeng/xui/app/g;
.super Ljava/lang/Object;
.source "XToast.java"


# direct methods
.method private static a(Ljava/lang/CharSequence;I)V
    .locals 3

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_toast:I

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->ef(I)Landroid/widget/Toast;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 57
    sget v2, Lcom/xiaopeng/xpui/R$id;->textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method

.method public static ee(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 47
    invoke-static {}, Lcom/xiaopeng/xui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->k(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method private static ef(I)Landroid/widget/Toast;
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 64
    invoke-static {}, Lcom/xiaopeng/xui/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 66
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    const v2, 0x800035

    invoke-virtual {v1, v2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 69
    return-object v1
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/xui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/CharSequence;)V
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->l(Ljava/lang/CharSequence;)I

    move-result v0

    .line 31
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->k(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->j(Ljava/lang/CharSequence;)V

    .line 36
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/CharSequence;)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/g;->a(Ljava/lang/CharSequence;I)V

    .line 44
    return-void
.end method

.method public static k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/g;->a(Ljava/lang/CharSequence;I)V

    .line 52
    return-void
.end method

.method private static l(Ljava/lang/CharSequence;)I
    .locals 10

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 77
    nop

    .line 79
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 81
    goto :goto_4

    .line 83
    :cond_1
    nop

    .line 84
    const/4 v5, -0x1

    .line 85
    move v7, v3

    move v6, v5

    move v3, v0

    move v5, v3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 87
    invoke-static {v8}, Lcom/xiaopeng/xui/d/c;->a(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 88
    if-nez v6, :cond_2

    .line 89
    add-int/lit8 v7, v7, 0x1

    .line 91
    :cond_2
    nop

    .line 92
    add-int/2addr v7, v9

    .line 93
    nop

    .line 85
    move v5, v9

    move v6, v5

    goto :goto_2

    .line 95
    :cond_3
    nop

    .line 85
    move v6, v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_4
    if-eqz v5, :cond_6

    .line 99
    if-nez v6, :cond_5

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 79
    :cond_5
    :goto_3
    move v3, v7

    goto :goto_4

    .line 103
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 79
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_7
    return v3
.end method

.method public static show(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 26
    invoke-static {}, Lcom/xiaopeng/xui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->i(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method
