.class public Lcom/xiaopeng/xui/widget/XListMultiple;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListMultiple.java"


# instance fields
.field private adh:Landroid/widget/TextView;

.field private adk:Landroid/widget/TextView;

.field private adl:Landroid/view/ViewStub;

.field private adm:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_type:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 50
    packed-switch p3, :pswitch_data_0

    .line 53
    sget p3, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple:I

    .line 54
    goto :goto_0

    .line 59
    :pswitch_0
    sget p3, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_wrap:I

    goto :goto_0

    .line 56
    :pswitch_1
    sget p3, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_two:I

    .line 57
    nop

    .line 63
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->nL()V

    .line 66
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_text_sub_lines:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 67
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adk:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text_sub:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setTextSub(Ljava/lang/CharSequence;)V

    .line 75
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_bottom:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 76
    if-eq p1, p3, :cond_0

    .line 77
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adl:Landroid/view/ViewStub;

    invoke-virtual {p4, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adl:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 83
    :cond_0
    sget p1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_right:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 84
    if-eq p1, p3, :cond_1

    .line 85
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adm:Landroid/view/ViewStub;

    invoke-virtual {p3, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adm:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 89
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 126
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListMultiple;->a(Landroid/view/ViewGroup;Z)V

    .line 131
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method private nL()V
    .locals 1

    .line 99
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adh:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adk:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adl:Landroid/view/ViewStub;

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adm:Landroid/view/ViewStub;

    .line 103
    return-void
.end method


# virtual methods
.method public b(ZZ)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->a(Landroid/view/ViewGroup;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->b(ZZ)V

    .line 116
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->adk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
