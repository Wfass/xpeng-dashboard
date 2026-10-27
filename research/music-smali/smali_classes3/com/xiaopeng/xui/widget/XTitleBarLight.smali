.class public Lcom/xiaopeng/xui/widget/XTitleBarLight;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTitleBarLight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


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

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lbyg$j;->x_titlebarlight:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->initView()V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lbyg$f;->x_title_bar_light_sparse_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mSparsePadding:I

    .line 81
    sget-object p3, Lbyg$n;->XTitleBarLight:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lbyg$n;->XTitleBarLight_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    sget p2, Lbyg$n;->XTitleBarLight_title_main_action:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setMainAction(I)V

    .line 89
    sget p2, Lbyg$n;->XTitleBarLight_title_text_type:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 90
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitleType(I)V

    .line 92
    sget p2, Lbyg$n;->XTitleBarLight_title_right_action_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 94
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(I)V

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 100
    sget v0, Lbyg$h;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 101
    sget v0, Lbyg$h;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 102
    sget v0, Lbyg$h;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    .line 103
    sget v0, Lbyg$h;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    .line 104
    sget v0, Lbyg$h;->x_titlebar_btn_close_lay:I

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

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 1

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getVuiLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setVuiLabel(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "generalAct"

    if-eqz p1, :cond_2

    .line 204
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v0, Lbya;->DISABLED:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "System.Return"

    .line 208
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 213
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz p1, :cond_4

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object p2, Lbya;->DISABLED:Lbya;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    goto :goto_1

    .line 217
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "System.Close"

    .line 218
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 186
    sget v0, Lbyg$h;->x_titlebar_btn_close:I

    if-ne p1, v0, :cond_0

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;->onTitleBarCloseClick()V

    goto :goto_0

    .line 190
    :cond_0
    sget v0, Lbyg$h;->x_titlebar_btn_back:I

    if-ne p1, v0, :cond_1

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    if-eqz p1, :cond_1

    .line 192
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;->onTitleBarBackClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setMainAction(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;

    return-void
.end method

.method public setRightAction(I)V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setRightAction(Landroid/view/View;)V

    return-void
.end method

.method public setRightAction(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleType(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mSparsePadding:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBarLight;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method
