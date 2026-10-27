.class public Lcom/xiaopeng/xui/widget/XTitleBarLight;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTitleBarLight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTitleBarLight$a;
    }
.end annotation


# instance fields
.field private Et:Landroid/widget/TextView;

.field private ahO:Lcom/xiaopeng/xui/widget/XImageButton;

.field private ahP:Lcom/xiaopeng/xui/widget/XImageButton;

.field private ahQ:Landroid/view/ViewGroup;

.field private ahS:Landroid/view/ViewGroup;

.field private ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

.field private ahU:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_titlebarlight:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->nL()V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$dimen;->x_title_bar_light_sparse_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahU:I

    .line 79
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_main_action:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 85
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setMainAction(I)V

    .line 87
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_text_type:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 88
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitleType(I)V

    .line 90
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_right_action_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 91
    if-lez p2, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(I)V

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private nL()V
    .locals 1

    .line 98
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 99
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 100
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahQ:Landroid/view/ViewGroup;

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahS:Landroid/view/ViewGroup;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahS:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahS:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 179
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    if-ne p1, v0, :cond_0

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$a;->rI()V

    goto :goto_0

    .line 183
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    if-ne p1, v0, :cond_1

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$a;->rJ()V

    .line 188
    :cond_1
    :goto_0
    return-void
.end method

.method public setMainAction(I)V
    .locals 3

    .line 137
    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 152
    :goto_0
    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBarLight$a;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahT:Lcom/xiaopeng/xui/widget/XTitleBarLight$a;

    .line 174
    return-void
.end method

.method public setRightAction(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahQ:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(Landroid/view/View;)V

    .line 157
    return-void
.end method

.method public setRightAction(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahQ:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 163
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setTitleType(I)V
    .locals 4

    .line 125
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->ahU:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->Et:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    :goto_0
    return-void
.end method
