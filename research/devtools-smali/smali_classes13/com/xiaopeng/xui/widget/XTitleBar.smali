.class public Lcom/xiaopeng/xui/widget/XTitleBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTitleBar$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private Et:Landroid/widget/TextView;

.field private ahO:Lcom/xiaopeng/xui/widget/XImageButton;

.field private ahP:Lcom/xiaopeng/xui/widget/XImageButton;

.field private ahQ:Landroid/view/ViewGroup;

.field private ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

.field private ahS:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_titlebar:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->nL()V

    .line 65
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_back:I

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setBackVisibility(I)V

    .line 70
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_close:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setCloseVisibility(I)V

    .line 73
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_mode:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 77
    const/4 p4, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 101
    if-eq p2, p4, :cond_1

    .line 102
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    goto :goto_0

    .line 92
    :pswitch_2
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 93
    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :pswitch_3
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 83
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_2:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 84
    if-eq p2, p4, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithIcon(I)V

    .line 87
    :cond_0
    if-eq p2, p4, :cond_1

    if-eq p3, p4, :cond_1

    .line 88
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XTitleBar;->C(II)V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    nop

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs a([Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_titlebar_action_ghostbtn:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 144
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method private varargs g([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_titlebar_action_icon:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 131
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 132
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 134
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private nL()V
    .locals 1

    .line 111
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 112
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 113
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->Et:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    .line 115
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahS:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public C(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->g([I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahS:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    if-ne v0, v1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBar$a;->rI()V

    goto :goto_0

    .line 208
    :cond_0
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    if-ne v0, v1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBar$a;->rJ()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar$a;->f(Landroid/view/View;I)V

    .line 217
    :cond_2
    :goto_0
    return-void
.end method

.method public setActionWithButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->a([Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public setActionWithCustom(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public setActionWithCustom(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    return-void
.end method

.method public setActionWithIcon(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->g([I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahQ:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public setBackVisibility(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahP:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public setCloseVisibility(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahO:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBar$a;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->ahR:Lcom/xiaopeng/xui/widget/XTitleBar$a;

    .line 199
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->Et:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method
