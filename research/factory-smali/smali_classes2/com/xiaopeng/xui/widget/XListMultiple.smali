.class public Lcom/xiaopeng/xui/widget/XListMultiple;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListMultiple.java"


# static fields
.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_TW0:I = 0x1

.field private static final TYPE_WRAP:I = 0x2


# instance fields
.field private mBottomViewStub:Landroid/view/ViewStub;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mText:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 50
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 53
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple:I

    .line 54
    .local v2, "layout":I
    goto :goto_0

    .line 59
    .end local v2    # "layout":I
    :pswitch_0
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_wrap:I

    goto :goto_0

    .line 56
    :pswitch_1
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_two:I

    .line 57
    .restart local v2    # "layout":I
    nop

    .line 59
    :goto_0
    nop

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->initView()V

    .line 66
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_text_sub_lines:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 67
    .local v3, "lines":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XListMultiple;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text_sub:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "textSub":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XListMultiple;->setTextSub(Ljava/lang/CharSequence;)V

    .line 75
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_bottom:I

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 76
    .local v6, "bottom":I
    if-eq v6, v7, :cond_0

    .line 77
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v8, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 78
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 83
    :cond_0
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_right:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 84
    .local v8, "right":I
    if-eq v8, v7, :cond_1

    .line 85
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 86
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 1

    .line 99
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    .line 103
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list-mul mBottomViewStub w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(II)V
    .locals 2
    .param p1, "lines"    # I
    .param p2, "type"    # I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list-mul this w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lines : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 131
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->setEnabled(ZZ)V

    .line 116
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 119
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
