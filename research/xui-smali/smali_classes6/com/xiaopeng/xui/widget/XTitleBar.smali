.class public Lcom/xiaopeng/xui/widget/XTitleBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODE_BUTTON:I = 0x2

.field private static final MODE_CUSTOM:I = 0x4

.field private static final MODE_ICON:I = 0x1

.field private static final MODE_LOADING:I = 0x3

.field private static final MODE_NONE:I


# instance fields
.field private mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mBtnCloseLay:Landroid/view/ViewGroup;

.field private mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

.field private mRightContainer:Landroid/view/ViewGroup;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_titlebar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->initView()V

    .line 65
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_back:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 68
    .local v1, "showBack":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTitleBar;->setBackVisibility(I)V

    .line 70
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_close:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 71
    .local v3, "showClose":I
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTitleBar;->setCloseVisibility(I)V

    .line 73
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_text:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_mode:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 77
    .local v4, "actionMode":I
    const/4 v6, -0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 101
    .local v2, "actionCustom":I
    if-eq v2, v6, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(I)V

    .end local v2    # "actionCustom":I
    goto :goto_0

    .line 98
    :pswitch_1
    goto :goto_0

    .line 92
    :pswitch_2
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "actionText1":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    .end local v2    # "actionText1":Ljava/lang/String;
    :pswitch_3
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_1:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 83
    .local v2, "actionIcon1":I
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTitleBar_title_action_2:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 84
    .local v7, "actionIcon2":I
    if-eq v2, v6, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithIcon(I)V

    .line 87
    :cond_0
    if-eq v2, v6, :cond_1

    if-eq v7, v6, :cond_1

    .line 88
    invoke-virtual {p0, v2, v7}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithIcon(II)V

    goto :goto_0

    .line 79
    .end local v2    # "actionIcon1":I
    .end local v7    # "actionIcon2":I
    :pswitch_4
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    nop

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

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

.method private varargs addActionWithButton([Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "action"    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_titlebar_action_ghostbtn:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 142
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 144
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .end local v2    # "textView":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private varargs addActionWithIcon([I)V
    .locals 5
    .param p1, "action"    # [I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_titlebar_action_icon:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 131
    .local v2, "icon":Landroid/widget/ImageButton;
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 132
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 134
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .end local v2    # "icon":Landroid/widget/ImageButton;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 111
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 112
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 113
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mTitle:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    .line 115
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnCloseLay:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public clearAction()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 194
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnCloseLay:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 125
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "generalAct"

    const-string v2, "System.Return"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 232
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    goto :goto_1

    .line 236
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    const-string v1, "generalAct"

    const-string v2, "System.Close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 245
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, "id":I
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarCloseClick()V

    goto :goto_0

    .line 208
    :cond_0
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarBackClick()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarActionClick(Landroid/view/View;I)V

    .line 217
    :cond_2
    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public setActionWithButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithButton([Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public setActionWithCustom(I)V
    .locals 3
    .param p1, "layout"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public setActionWithCustom(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    return-void
.end method

.method public setActionWithIcon(I)V
    .locals 2
    .param p1, "action1"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithIcon([I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public setActionWithIcon(II)V
    .locals 3
    .param p1, "action1"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "action2"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithIcon([I)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    return-void
.end method

.method public setBackVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public setCloseVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    .line 199
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method
