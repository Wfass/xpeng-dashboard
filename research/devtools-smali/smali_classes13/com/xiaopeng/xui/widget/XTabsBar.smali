.class public Lcom/xiaopeng/xui/widget/XTabsBar;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XTabsBar.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XTabsBar$a;
    }
.end annotation


# instance fields
.field private aht:Lcom/xiaopeng/xui/widget/XTabLayout;

.field private ahu:Lcom/xiaopeng/xui/widget/XImageButton;

.field private ahv:Lcom/xiaopeng/xui/widget/XTabsBar$a;

.field private ahw:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabsBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahv:Lcom/xiaopeng/xui/widget/XTabsBar$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 61
    if-nez p3, :cond_0

    .line 62
    sget p3, Lcom/xiaopeng/xpui/R$style;->XTabsBarAppearance_Left:I

    .line 64
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarMarginStart:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XTabsBar;->eN(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 66
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabGap:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 67
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabWidth:I

    const/16 v4, 0xc0

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xui/widget/XTabsBar;->eN(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 68
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTabHeight:I

    const/16 v5, 0x82

    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/widget/XTabsBar;->eN(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 69
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarBtnVisibility:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 70
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XTabsBar_tabsBarTitleVisibility:I

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/xiaopeng/xpui/R$layout;->x_tabsbar:I

    invoke-virtual {v0, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tabsbar_btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahu:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahu:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahu:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v5, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabsBar$iRbI3vo-Z6Z4-ukE-66oGLKzfNw;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabsBar$iRbI3vo-Z6Z4-ukE-66oGLKzfNw;-><init>(Lcom/xiaopeng/xui/widget/XTabsBar;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_x_tabsbar_btn_close_lay:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahw:Landroid/view/ViewGroup;

    .line 84
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tabsbar_tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 87
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result p1

    .line 89
    int-to-float p2, p1

    mul-float/2addr v3, p2

    add-int/lit8 p2, p1, -0x1

    int-to-float p2, p2

    mul-float/2addr v2, p2

    add-float/2addr v3, v2

    float-to-int p2, v3

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 91
    if-nez p1, :cond_1

    .line 92
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-int p2, p1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 96
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 97
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p4, v4

    invoke-direct {p3, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 99
    const/16 p1, 0xe

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 101
    :cond_2
    const/16 p1, 0x9

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    float-to-int p1, v1

    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xui/widget/XTabsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    new-instance p2, Lcom/xiaopeng/xui/widget/XTabsBar$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XTabsBar$1;-><init>(Lcom/xiaopeng/xui/widget/XTabsBar;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->setOnTabChangeListener(Lcom/xiaopeng/xui/widget/XTabLayout$b;)V

    .line 130
    return-void
.end method

.method public static synthetic lambda$iRbI3vo-Z6Z4-ukE-66oGLKzfNw(Lcom/xiaopeng/xui/widget/XTabsBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTabsBar;->n(Landroid/view/View;)V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahv:Lcom/xiaopeng/xui/widget/XTabsBar$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahv:Lcom/xiaopeng/xui/widget/XTabsBar$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/XTabsBar$a;->o(Landroid/view/View;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method protected eN(I)I
    .locals 2

    .line 139
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->getTabCount()I

    move-result v0

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

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

.method protected onAttachedToWindow()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahu:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahw:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 136
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setEnabled(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public setOnTabsClickListener(Lcom/xiaopeng/xui/widget/XTabsBar$a;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->ahv:Lcom/xiaopeng/xui/widget/XTabsBar$a;

    .line 144
    return-void
.end method

.method public setTabLayoutVisible(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar;->aht:Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->setVisibility(I)V

    .line 199
    :cond_1
    return-void
.end method
