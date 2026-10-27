.class public Lcom/xiaopeng/xui/widget/XListSingle;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListSingle.java"


# instance fields
.field private adh:Landroid/widget/TextView;

.field private adm:Landroid/view/ViewStub;

.field private adn:Landroid/widget/TextView;

.field private ado:Landroid/view/ViewGroup;

.field private adp:Landroid/view/ViewStub;

.field private adq:Landroid/widget/ImageView;

.field private adr:Landroid/view/ViewGroup;

.field private ads:Landroid/view/ViewGroup;

.field private adt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_list_single:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->nL()V

    .line 53
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XListSingle:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListSingle;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 59
    if-eq p2, p3, :cond_0

    .line 60
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adp:Landroid/view/ViewStub;

    invoke-virtual {p4, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 61
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adp:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 62
    instance-of p4, p2, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 63
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adr:Landroid/view/ViewGroup;

    .line 66
    :cond_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_right:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 67
    if-eq p2, p3, :cond_1

    .line 68
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adm:Landroid/view/ViewStub;

    invoke-virtual {p4, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 69
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adm:Landroid/view/ViewStub;

    invoke-virtual {p4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p4

    .line 70
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 71
    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    .line 74
    :cond_1
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag_icon:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 75
    if-eq p4, p3, :cond_2

    .line 76
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListSingle;->setTagIcon(I)V

    .line 78
    :cond_2
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 79
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListSingle;->bg(Z)V

    .line 81
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListSingle_list_single_left_right_touch_full:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adt:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    if-eq p2, p3, :cond_4

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p4, :cond_3

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    goto :goto_0

    :cond_3
    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    if-eqz p4, :cond_5

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_has_tag_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 96
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_5
    :goto_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 231
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 233
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 234
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListSingle;->a(Landroid/view/ViewGroup;Z)V

    .line 236
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method private nL()V
    .locals 1

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adn:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ado:Landroid/view/ViewGroup;

    .line 105
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adp:Landroid/view/ViewStub;

    .line 106
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adm:Landroid/view/ViewStub;

    .line 107
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adq:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method private rj()V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adr:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 174
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adt:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 175
    sget-object v0, Lcom/xiaopeng/xui/d/g;->abr:[Ljava/lang/Class;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 176
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adr:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/xiaopeng/xui/d/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 177
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 178
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/View;

    .line 179
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 180
    invoke-static {v5, p0}, Lcom/xiaopeng/xui/d/g;->a([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 175
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ado:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/ViewGroup;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 188
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adt:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 189
    sget-object v0, Lcom/xiaopeng/xui/d/g;->abr:[Ljava/lang/Class;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 190
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/d/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 193
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/d/g;->a([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/ViewGroup;)V

    .line 201
    :cond_5
    return-void
.end method

.method private rk()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 205
    sget-object v0, Lcom/xiaopeng/xui/d/g;->abr:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 206
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/d/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 208
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 209
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 210
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/d/g;->a([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 205
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->ads:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/ViewGroup;)V

    .line 217
    :cond_2
    return-void
.end method


# virtual methods
.method public b(ZZ)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListSingle;->a(Landroid/view/ViewGroup;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public bg(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adq:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 167
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->rj()V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListSingle;->rk()V

    .line 169
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListSingle;->b(ZZ)V

    .line 221
    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adn:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setTagIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListSingle;->adh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method
