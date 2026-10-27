.class public Lcom/xiaopeng/xui/widget/XListTwo;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListTwo.java"


# instance fields
.field private adh:Landroid/widget/TextView;

.field private adk:Landroid/widget/TextView;

.field private adm:Landroid/view/ViewStub;

.field private adn:Landroid/widget/TextView;

.field private ado:Landroid/view/ViewGroup;

.field private adp:Landroid/view/ViewStub;

.field private adq:Landroid/widget/ImageView;

.field private adr:Landroid/view/ViewGroup;

.field private ads:Landroid/view/ViewGroup;

.field private adt:I

.field private adu:Landroid/view/ViewStub;

.field private adv:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListTwo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_list_two:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->nL()V

    .line 55
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XListTwo:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_text_sub:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->setTextSub(Ljava/lang/CharSequence;)V

    .line 63
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_text_sub_lines:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 64
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 67
    if-eq p2, p3, :cond_0

    .line 68
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adp:Landroid/view/ViewStub;

    invoke-virtual {p4, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 69
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adp:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 70
    instance-of p4, p2, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 71
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adr:Landroid/view/ViewGroup;

    .line 74
    :cond_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_right:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 75
    if-eq p2, p3, :cond_1

    .line 76
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adm:Landroid/view/ViewStub;

    invoke-virtual {p4, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 77
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adm:Landroid/view/ViewStub;

    invoke-virtual {p4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p4

    .line 78
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 79
    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ads:Landroid/view/ViewGroup;

    .line 82
    :cond_1
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_icon:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 83
    if-eq p4, p3, :cond_2

    .line 84
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListTwo;->setTagIcon(I)V

    .line 87
    :cond_2
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 88
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/XListTwo;->bg(Z)V

    .line 90
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_tag_custom:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 91
    if-eq p4, p3, :cond_3

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adu:Landroid/view/ViewStub;

    invoke-virtual {v1, p4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 93
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adu:Landroid/view/ViewStub;

    invoke-virtual {p4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 96
    :cond_3
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XListTwo_list_two_left_right_touch_full:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adt:I

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    if-eq p2, p3, :cond_4

    .line 101
    sget p1, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_list_tv_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 103
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 107
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    :cond_4
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 256
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 259
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListTwo;->a(Landroid/view/ViewGroup;Z)V

    .line 261
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return-void
.end method

.method private nL()V
    .locals 1

    .line 169
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adh:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adn:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ado:Landroid/view/ViewGroup;

    .line 172
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adv:Landroid/view/ViewGroup;

    .line 173
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_left:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adp:Landroid/view/ViewStub;

    .line 175
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adm:Landroid/view/ViewStub;

    .line 176
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adq:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tag_custom_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adu:Landroid/view/ViewStub;

    .line 178
    return-void
.end method

.method private rj()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 128
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 129
    sget-object v0, Lcom/xiaopeng/xui/d/g;->abr:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 130
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adr:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/d/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 133
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/d/g;->a([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ado:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/ViewGroup;)V

    .line 145
    :cond_2
    return-void
.end method

.method private rk()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ads:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 150
    iget v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 151
    sget-object v0, Lcom/xiaopeng/xui/d/g;->abr:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 152
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ads:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/xiaopeng/xui/d/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 154
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/View;

    .line 155
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    invoke-static {v4, p0}, Lcom/xiaopeng/xui/d/g;->a([Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->ads:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/ViewGroup;)V

    .line 166
    :cond_2
    return-void
.end method


# virtual methods
.method public b(ZZ)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListTwo;->a(Landroid/view/ViewGroup;Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public bg(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adq:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->rj()V

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListTwo;->rk()V

    .line 123
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListTwo;->b(ZZ)V

    .line 246
    return-void
.end method

.method public setNum(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adn:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setTagIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    return-void
.end method

.method public setTagOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adh:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 221
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListTwo;->adk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method
