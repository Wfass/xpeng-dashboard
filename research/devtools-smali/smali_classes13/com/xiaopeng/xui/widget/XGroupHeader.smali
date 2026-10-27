.class public Lcom/xiaopeng/xui/widget/XGroupHeader;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XGroupHeader.java"


# instance fields
.field private adh:Landroid/widget/TextView;

.field private adi:Landroid/view/View;

.field private adj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action_location:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 59
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_right:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/xiaopeng/xpui/R$layout;->x_groupheader:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->nL()V

    .line 67
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action_mode:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    .line 71
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_action:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 72
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 73
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text_size:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    .line 74
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adh:Landroid/widget/TextView;

    invoke-virtual {p3, p4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XGroupHeader_group_header_text_size:I

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/content/res/TypedArray;I)Lcom/xiaopeng/xui/view/b/b;

    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz p3, :cond_1

    .line 78
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->abs:Lcom/xiaopeng/xui/view/a;

    new-instance p4, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$4FdQAyWh3K0kRdpWjyeGqf6KTFI;

    invoke-direct {p4, p0, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$4FdQAyWh3K0kRdpWjyeGqf6KTFI;-><init>(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/b/b;)V

    invoke-virtual {p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Lcom/xiaopeng/xui/view/a$a;)V

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/view/b/b;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adh:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/b/b;->a(Landroid/widget/TextView;)V

    .line 80
    return-void
.end method

.method public static synthetic lambda$4FdQAyWh3K0kRdpWjyeGqf6KTFI(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->a(Lcom/xiaopeng/xui/view/b/b;)V

    return-void
.end method

.method private nL()V
    .locals 1

    .line 120
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_groupheader_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adh:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method private setView(I)V
    .locals 3

    .line 89
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    if-lez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_loading:I

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 109
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_button:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 102
    if-lez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_groupheader_action_icon:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->addView(Landroid/view/View;)V

    .line 95
    if-lez p1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setIcon(I)V

    goto :goto_0

    .line 91
    :pswitch_4
    nop

    .line 117
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

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->removeView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public setButtonText(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 144
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :cond_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 151
    :goto_0
    return-void
.end method

.method public setCustom(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 131
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 134
    iget v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 137
    :cond_0
    iput v1, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adj:I

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adi:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XGroupHeader;->removeView(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setView(I)V

    .line 141
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;->adh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
