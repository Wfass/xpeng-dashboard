.class public Lcom/xiaopeng/xui/widget/XListMultiple;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XListMultiple.java"

# interfaces
.implements Lbxt;


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

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    sget-object p3, Lbyg$n;->XListMultiple:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget p3, Lbyg$n;->XListMultiple_list_multiple_type:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 62
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 63
    sget p3, Lbyg$j;->x_list_multiple_wrap:I

    goto :goto_0

    :cond_0
    if-eq p3, v0, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    .line 68
    sget p3, Lbyg$j;->x_list_multiple:I

    goto :goto_0

    .line 74
    :cond_1
    sget p3, Lbyg$j;->x_list_multiple_wrap:I

    goto :goto_0

    .line 71
    :cond_2
    sget p3, Lbyg$j;->x_list_multiple_two:I

    .line 79
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->initView()V

    .line 82
    sget p1, Lbyg$n;->XListMultiple_list_text_sub_lines:I

    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p3

    if-eqz p3, :cond_3

    const v0, 0x7fffffff

    :cond_3
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 83
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 85
    sget p1, Lbyg$n;->XListMultiple_list_multiple_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget p1, Lbyg$n;->XListMultiple_list_multiple_text_sub:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setTextSub(Ljava/lang/CharSequence;)V

    .line 91
    sget p1, Lbyg$n;->XListMultiple_list_multiple_bottom:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_4

    .line 93
    iget-object p4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p4, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 95
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_4

    .line 96
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    .line 103
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p1

    if-nez p1, :cond_5

    .line 104
    sget p1, Lbyg$n;->XListMultiple_list_multiple_right:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_5

    .line 106
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {p3, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 108
    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_5

    .line 109
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    .line 113
    :cond_5
    sget p1, Lbyg$n;->XListMultiple_list_multiple_right_vuiLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    .line 114
    sget p1, Lbyg$n;->XListMultiple_list_multiple_bottom_vuiLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    .line 115
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 125
    sget v0, Lbyg$h;->x_list_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    .line 126
    sget v0, Lbyg$h;->x_list_tv_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    .line 127
    sget v0, Lbyg$h;->x_list_bottom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomViewStub:Landroid/view/ViewStub;

    .line 128
    sget v0, Lbyg$h;->x_list_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

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

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1(II)V
    .locals 2

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

    const-string p1, ", type :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 157
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 5

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v1

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupRight:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XListMultiple;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 174
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 175
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mViewGroupBottom:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 176
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XListMultiple;->isListNeedSetVuiLabelView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XListMultiple;->setEnabled(ZZ)V

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XListMultiple;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSub(Ljava/lang/CharSequence;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVuiLabels(Ljava/util/Map;)V
    .locals 3
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
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 187
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mRightVuiLabel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XListMultiple;->mBottomVuiLabel:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XListMultiple;->updateVui(Landroid/view/View;)V

    return-void
.end method
