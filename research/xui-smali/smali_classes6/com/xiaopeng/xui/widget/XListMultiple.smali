.class public Lcom/xiaopeng/xui/widget/XListMultiple;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListMultiple.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# static fields
.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_TW0:I = 0x1

.field private static final TYPE_WRAP:I = 0x2


# instance fields
.field private mBottomViewStub:Landroid/view/ViewStub;

.field private mBottomVuiLabel:Ljava/lang/String;

.field private mRightViewStub:Landroid/view/ViewStub;

.field private mRightVuiLabel:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;

.field private mViewGroupBottom:Landroid/view/ViewGroup;

.field private mViewGroupRight:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
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

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 62
    .local v1, "type":I
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_wrap:I

    .local v2, "layout":I
    goto :goto_0

    .line 65
    .end local v2    # "layout":I
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple:I

    .line 69
    .restart local v2    # "layout":I
    goto :goto_0

    .line 74
    .end local v2    # "layout":I
    :pswitch_0
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_wrap:I

    goto :goto_0

    .line 71
    :pswitch_1
    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_list_multiple_two:I

    .line 72
    .restart local v2    # "layout":I
    nop

    .line 74
    :goto_0
    nop

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->initView()V

    .line 82
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_text_sub_lines:I

    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7fffffff

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 83
    .local v3, "lines":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 85
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XListMultiple;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_text_sub:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "textSub":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XListMultiple;->setTextSub(Ljava/lang/CharSequence;)V

    .line 91
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_bottom:I

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 92
    .local v6, "bottom":I
    if-eq v6, v7, :cond_2

    .line 93
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v8, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 94
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    .line 95
    .local v8, "v":Landroid/view/View;
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 96
    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    .line 103
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v8

    if-nez v8, :cond_3

    .line 104
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_right:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 105
    .local v8, "right":I
    if-eq v8, v7, :cond_3

    .line 106
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v7, v8}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 107
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    .line 108
    .local v7, "v":Landroid/view/View;
    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    .line 109
    move-object v9, v7

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 113
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "right":I
    :cond_3
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_right_vuiLabel:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    .line 114
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XListMultiple_list_multiple_bottom_vuiLabel:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView()V
    .locals 1

    .line 125
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    .line 128
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    .line 129
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 99
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

    .line 118
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

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 157
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 152
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListMultiple;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 169
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 165
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XListMultiple;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 178
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 174
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 182
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->setEnabled(ZZ)V

    .line 142
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "containChild"    # Z

    .line 145
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public setVuiLabels(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 190
    .local v2, "key":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    goto :goto_1

    .line 192
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    .line 195
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "key":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->updateVui(Landroid/view/View;)V

    .line 197
    return-void
.end method
