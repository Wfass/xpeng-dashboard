.class public Lcom/xiaopeng/xui/widget/XTabsBar;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTabsBar.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;
    }
.end annotation


# instance fields
.field private mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mIconBtnLay:Landroid/view/ViewGroup;

.field private mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

.field private mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
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

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabsBar;->initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XTabsBar;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    return-object v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 61
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    if-nez p3, :cond_0

    .line 62
    sget v3, Lcom/xiaopeng/xpui/R$style;->XTabsBarAppearance_Left:I

    .end local p3    # "defStyleAttr":I
    .local v3, "defStyleAttr":I
    goto :goto_0

    .line 64
    .end local v3    # "defStyleAttr":I
    .restart local p3    # "defStyleAttr":I
    :cond_0
    move/from16 v3, p3

    .end local p3    # "defStyleAttr":I
    .restart local v3    # "defStyleAttr":I
    :goto_0
    sget-object v4, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar:[I

    invoke-virtual {v2, v1, v4, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 65
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarMarginStart:I

    const/16 v6, 0x18

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XTabsBar;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 66
    .local v5, "tabMarginStart":F
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabGap:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 67
    .local v6, "tabGap":F
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabWidth:I

    const/16 v8, 0xc0

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XTabsBar;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 68
    .local v7, "tabWidth":F
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabHeight:I

    const/16 v9, 0x82

    invoke-virtual {v0, v9}, Lcom/xiaopeng/xui/widget/XTabsBar;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 69
    .local v8, "tabHeight":F
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarBtnVisibility:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 70
    .local v9, "tabsBarBtnVisibility":I
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTitleVisibility:I

    const/16 v11, 0x8

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 71
    .local v10, "tabsBarTitleVisibility":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/xiaopeng/xpui/R$layout;->x_tabsbar:I

    invoke-virtual {v11, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget v11, Lcom/xiaopeng/xpui/R$id;->x_tabsbar_btn_close:I

    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 76
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v11, v9}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 77
    iget-object v11, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v12, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabsBar$p4pps3QhNrK50K5MT1dALhVk4Qw;

    invoke-direct {v12, v0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabsBar$p4pps3QhNrK50K5MT1dALhVk4Qw;-><init>(Lcom/xiaopeng/xui/widget/XTabsBar;)V

    invoke-virtual {v11, v12}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v11, Lcom/xiaopeng/xpui/R$id;->x_x_tabsbar_btn_close_lay:I

    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtnLay:Landroid/view/ViewGroup;

    .line 84
    sget v11, Lcom/xiaopeng/xpui/R$id;->x_tabsbar_tv_title:I

    invoke-virtual {v0, v11}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    .local v11, "titleView":Lcom/xiaopeng/xui/widget/XTextView;
    invoke-virtual {v11, v10}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 87
    new-instance v12, Lcom/xiaopeng/xui/widget/XTabLayout;

    move-object/from16 v13, p1

    move/from16 v14, p4

    invoke-direct {v12, v13, v1, v3, v14}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 88
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v12}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v12

    .line 89
    .local v12, "count":I
    int-to-float v15, v12

    mul-float/2addr v15, v7

    add-int/lit8 v1, v12, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v15, v1

    float-to-int v1, v15

    .line 90
    .local v1, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 91
    .local v15, "dm":Landroid/util/DisplayMetrics;
    if-nez v12, :cond_1

    .line 92
    move/from16 v16, v1

    iget v1, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .end local v1    # "w":I
    .local v16, "w":I
    int-to-float v1, v1

    sub-float/2addr v1, v5

    float-to-int v1, v1

    .end local v16    # "w":I
    .restart local v1    # "w":I
    goto :goto_1

    .line 95
    :cond_1
    move/from16 v16, v1

    :goto_1
    move-object/from16 v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    .local v17, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 96
    .local v2, "mConfiguration":Landroid/content/res/Configuration;
    move/from16 v18, v3

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 97
    .local v3, "ori":I
    .local v18, "defStyleAttr":I
    move-object/from16 v19, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "mConfiguration":Landroid/content/res/Configuration;
    .local v19, "mConfiguration":Landroid/content/res/Configuration;
    move-object/from16 v20, v4

    float-to-int v4, v8

    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    .local v20, "typedArray":Landroid/content/res/TypedArray;
    invoke-direct {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v2, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 99
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 101
    :cond_2
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    float-to-int v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    :goto_2
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, v4, v2}, Lcom/xiaopeng/xui/widget/XTabsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    move/from16 v21, v1

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabsBar$1;

    .end local v1    # "w":I
    .local v21, "w":I
    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/widget/XTabsBar$1;-><init>(Lcom/xiaopeng/xui/widget/XTabsBar;)V

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setOnTabChangeListener(Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;)V

    .line 130
    return-void
.end method

.method public static synthetic lambda$initView$0(Lcom/xiaopeng/xui/widget/XTabsBar;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;->onTabsBarCloseClick(Landroid/view/View;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;)I

    .line 162
    :cond_0
    return-void
.end method

.method public addTab(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->addTab(Ljava/lang/CharSequence;I)I

    .line 168
    :cond_0
    return-void
.end method

.method protected dp(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 139
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getSelectedTabIndex()I

    move-result v0

    return v0

    .line 217
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTabTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtnLay:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 136
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "generalAct"

    const-string v2, "System.Close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mIconBtn:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 258
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public removeTab(I)V
    .locals 1
    .param p1, "index"    # I

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeTab(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public removeTab(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "selectIndex"    # I

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->removeTab(II)V

    .line 186
    :cond_0
    return-void
.end method

.method public selectTab(I)V
    .locals 2
    .param p1, "index"    # I

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    .line 211
    :cond_0
    return-void
.end method

.method public selectTab(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animator"    # Z

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    .line 205
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setEnabled(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "position"    # I

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setEnabled(ZI)V

    .line 236
    :cond_0
    return-void
.end method

.method public setOnTabsClickListener(Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mOnTabChangeListener:Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    .line 144
    return-void
.end method

.method public setTabLayoutVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVisibility(I)V

    .line 199
    :cond_1
    return-void
.end method

.method public updateTabTitle(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->updateTabTitle(ILjava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method
