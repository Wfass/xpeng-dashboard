.class public Lcom/xiaopeng/xui/widget/XTitleBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


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

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lbyg$j;->x_titlebar:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->initView()V

    .line 65
    sget-object p3, Lbyg$n;->XTitleBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget p2, Lbyg$n;->XTitleBar_title_back:I

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setBackVisibility(I)V

    .line 70
    sget p2, Lbyg$n;->XTitleBar_title_close:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setCloseVisibility(I)V

    .line 73
    sget p2, Lbyg$n;->XTitleBar_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    sget p2, Lbyg$n;->XTitleBar_title_action_mode:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    const/4 p4, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget p2, Lbyg$n;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, p4, :cond_5

    .line 102
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(I)V

    goto :goto_0

    .line 92
    :cond_1
    sget p2, Lbyg$n;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 94
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_2
    sget p2, Lbyg$n;->XTitleBar_title_action_1:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 83
    sget p3, Lbyg$n;->XTitleBar_title_action_2:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p2, p4, :cond_3

    .line 85
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithIcon(I)V

    :cond_3
    if-eq p2, p4, :cond_5

    if-eq p3, p4, :cond_5

    .line 88
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithIcon(II)V

    goto :goto_0

    .line 79
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private varargs addActionWithButton([Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 140
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbyg$j;->x_titlebar_action_ghostbtn:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

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
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs addActionWithIcon([I)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbyg$j;->x_titlebar_action_icon:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

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
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 111
    sget v0, Lbyg$h;->x_titlebar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 112
    sget v0, Lbyg$h;->x_titlebar_btn_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 113
    sget v0, Lbyg$h;->x_titlebar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mTitle:Landroid/widget/TextView;

    .line 114
    sget v0, Lbyg$h;->x_titlebar_right_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    .line 115
    sget v0, Lbyg$h;->x_titlebar_btn_close_lay:I

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

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 1

    .line 222
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "generalAct"

    if-eqz p1, :cond_1

    .line 223
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v0, Lbya;->DISABLED:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "System.Return"

    .line 227
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 232
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz p1, :cond_3

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object p2, Lbya;->DISABLED:Lbya;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lbya;)V

    goto :goto_1

    .line 236
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "System.Close"

    .line 237
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    sget v1, Lbyg$h;->x_titlebar_btn_close:I

    if-ne v0, v1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz p1, :cond_2

    .line 206
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarCloseClick()V

    goto :goto_0

    .line 208
    :cond_0
    sget v1, Lbyg$h;->x_titlebar_btn_back:I

    if-ne v0, v1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz p1, :cond_2

    .line 210
    invoke-interface {p1}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarBackClick()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    if-eqz v1, :cond_2

    .line 214
    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;->onTitleBarActionClick(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setActionWithButton(Ljava/lang/CharSequence;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x1

    .line 175
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithButton([Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setActionWithCustom(I)V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTitleBar;->setActionWithCustom(Landroid/view/View;)V

    return-void
.end method

.method public setActionWithCustom(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setActionWithIcon(I)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x1

    .line 163
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithIcon([I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setActionWithIcon(II)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x2

    .line 169
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XTitleBar;->addActionWithIcon([I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mRightContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setBackVisibility(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnBack:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    return-void
.end method

.method public setCloseVisibility(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mBtnClose:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    return-void
.end method

.method public setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mOnTitleBarClickListener:Lcom/xiaopeng/xui/widget/XTitleBar$OnTitleBarClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
