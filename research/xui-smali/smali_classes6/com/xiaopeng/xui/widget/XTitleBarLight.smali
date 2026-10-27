.class public Lcom/xiaopeng/xui/widget/XTitleBarLight;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTitleBarLight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;
    }
.end annotation


# static fields
.field public static final MAIN_ACTION_BACK:I = 0x1

.field public static final MAIN_ACTION_CLOSE:I = 0x0

.field public static final MAIN_ACTION_NONE:I = -0x1

.field public static final TYPE_COMPACT:I = 0x0

.field public static final TYPE_SPARSE:I = 0x1


# instance fields
.field private mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mBtnCloseLay:Landroid/view/ViewGroup;

.field private mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

.field private mRightContainer:Landroid/view/ViewGroup;

.field private mSparsePadding:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
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

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_titlebarlight:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->initView()V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_title_bar_light_sparse_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mSparsePadding:I

    .line 81
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_main_action:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 87
    .local v2, "mainAction":I
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setMainAction(I)V

    .line 89
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_text_type:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 90
    .local v4, "type":I
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitleType(I)V

    .line 92
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTitleBarLight_title_right_action_layout:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 93
    .local v3, "rightAction":I
    if-lez v3, :cond_0

    .line 94
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(I)V

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private initView()V
    .locals 1

    .line 100
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 101
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    .line 104
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnCloseLay:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method


# virtual methods
.method public clearRightAction()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 176
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 113
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v0, p0, v2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v0, p0, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnCloseLay:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnCloseLay:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 120
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x64
        0x3c
        0x64
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x3c
        0x64
        0x3c
    .end array-data
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setVuiLabel(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "generalAct"

    const-string v2, "System.Return"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 213
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    goto :goto_1

    .line 217
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    const-string v1, "generalAct"

    const-string v2, "System.Close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    goto :goto_2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 186
    .local v0, "id":I
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_close:I

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;->onTitleBarCloseClick()V

    goto :goto_0

    .line 190
    :cond_0
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_btn_back:I

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;->onTitleBarBackClick()V

    .line 195
    :cond_1
    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public setMainAction(I)V
    .locals 3
    .param p1, "action"    # I

    .line 144
    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 149
    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 159
    :goto_0
    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    .line 181
    return-void
.end method

.method public setRightAction(I)V
    .locals 3
    .param p1, "layout"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public setRightAction(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setTitleType(I)V
    .locals 5
    .param p1, "type"    # I

    .line 132
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mSparsePadding:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    :goto_0
    return-void
.end method
