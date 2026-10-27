.class public Lcom/xiaopeng/xui/app/XToast;
.super Ljava/lang/Object;
.source "XToast.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static charactersSize(Ljava/lang/CharSequence;)I
    .locals 11
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "count":I
    array-length v3, v1

    move v4, v2

    move v2, v0

    .end local v2    # "count":I
    .local v4, "count":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v5, v1, v2

    .line 80
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 81
    goto :goto_4

    .line 83
    :cond_1
    const/4 v6, 0x0

    .line 84
    .local v6, "hasFull":Z
    const/4 v7, -0x1

    .line 85
    .local v7, "lastCharacterType":I
    move v8, v4

    move v4, v0

    .local v4, "i":I
    .local v8, "count":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 87
    .local v9, "c":C
    invoke-static {v9}, Lcom/xiaopeng/xui/utils/XCharacterUtils;->isFullAngle(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 88
    if-nez v7, :cond_2

    .line 89
    add-int/lit8 v8, v8, 0x1

    .line 91
    :cond_2
    const/4 v7, 0x1

    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    const/4 v6, 0x1

    goto :goto_2

    .line 95
    :cond_3
    const/4 v7, 0x0

    .line 85
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    .end local v4    # "i":I
    :cond_4
    if-eqz v6, :cond_6

    .line 99
    if-nez v7, :cond_5

    .line 100
    add-int/lit8 v8, v8, 0x1

    .line 79
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "hasFull":Z
    .end local v7    # "lastCharacterType":I
    .end local v8    # "count":I
    .local v4, "count":I
    :cond_5
    :goto_3
    move v4, v8

    goto :goto_4

    .line 103
    .end local v4    # "count":I
    .restart local v5    # "part":Ljava/lang/String;
    .restart local v6    # "hasFull":Z
    .restart local v7    # "lastCharacterType":I
    .restart local v8    # "count":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "hasFull":Z
    .end local v7    # "lastCharacterType":I
    goto :goto_3

    .line 79
    .end local v8    # "count":I
    .restart local v4    # "count":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_7
    return v4
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static makeToast(I)Landroid/widget/Toast;
    .locals 5
    .param p0, "layoutId"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 64
    invoke-static {}, Lcom/xiaopeng/xui/app/XToast;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, "toast":Landroid/widget/Toast;
    const/4 v3, 0x0

    const v4, 0x800035

    invoke-virtual {v2, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 69
    return-object v2
.end method

.method public static show(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 26
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->charactersSize(Ljava/lang/CharSequence;)I

    move-result v0

    .line 31
    .local v0, "size":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    .line 36
    :goto_0
    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_toast:I

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->makeToast(I)Landroid/widget/Toast;

    move-result-object v0

    .line 56
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/xiaopeng/xpui/R$id;->textView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    .line 58
    .local v2, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 59
    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method

.method public static showLong(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 47
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showLong(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    .line 52
    return-void
.end method

.method public static showShort(I)V
    .locals 1
    .param p0, "msgRes"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 39
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showShort(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;I)V

    .line 44
    return-void
.end method
