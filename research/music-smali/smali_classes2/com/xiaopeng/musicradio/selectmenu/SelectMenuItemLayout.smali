.class public Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "SelectMenuItemLayout.java"

# interfaces
.implements Lbor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lbor;",
        "Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;",
        ">;",
        "Lbor;"
    }
.end annotation


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

.field private mPosition:I

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mSelectIndex:I

.field private mSelectMenuAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

.field private mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

.field private mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method private setKugouProgress(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 216
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v2

    invoke-virtual {v2}, Lbhg;->c()Lbhh;

    move-result-object v2

    invoke-virtual {v2}, Lbhh;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 218
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndicatorType(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndicatorType(I)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    :goto_0
    return-void
.end method

.method private setNeteaseProgress(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 197
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v2

    invoke-virtual {v2}, Lbhg;->b()Lbhi;

    move-result-object v2

    invoke-virtual {v2}, Lbhi;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndicatorType(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndicatorType(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setIndeterminate(Z)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setEnableIndicator(Z)V

    :goto_0
    return-void
.end method

.method private setTextColor()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$a;->m_color_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v1, Lcom/xiaopeng/musicradio/main/a$c;->selected_menu_bg:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$a;->m_color_text_2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;
    .locals 1

    .line 65
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->select_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->tab_down:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->tab_txt_nomal:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->tab_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->circular_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->tab_img_mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->select_menu_item_layout:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->reviewOnScreenChange()V

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    if-eqz p1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setTextColor()V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setTextSize()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSingleLine(Z)V

    return-void
.end method

.method public setDownState()V
    .locals 6

    .line 114
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mSelectIndex:I

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 117
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/main/a$c;->ic_img_mask_netease:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 128
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->p()F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setNeteaseProgress(I)V

    .line 140
    :cond_3
    :goto_1
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mSelectIndex:I

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    if-ne v0, v1, :cond_7

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 142
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_3

    .line 147
    :cond_4
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->o()Z

    move-result v0

    if-nez v0, :cond_6

    .line 148
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/main/a$c;->ic_img_mask_kugou:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 154
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->p()F

    move-result v0

    float-to-int v0, v0

    .line 156
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setKugouProgress(I)V

    .line 165
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setProgressBar()V

    return-void
.end method

.method public setInfo(Lcom/xiaopeng/musicradio/bean/common/LeftSelect;I)V
    .locals 2

    .line 94
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImgMask:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 101
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mSelectIndex:I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/selectmenu/presenter/SelectMenuItemPresenter;->a(I)V

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getRes()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 104
    iget-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setTextColor()V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setDownState()V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->reviewOnScreenChange()V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setTextSize()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setProgressBar()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabDown:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaopeng/musicradio/main/a$f;->vui_down:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mXCircularProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->getIndicatorType()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaopeng/musicradio/main/a$f;->vui_resume:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaopeng/musicradio/main/a$f;->vui_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mData:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVuiLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabItem:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectMenuAdapter(Lcom/xiaopeng/musicradio/selectmenu/a;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mSelectMenuAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    return-void
.end method

.method public setTextSize()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->mTabTxtNomal:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$b;->x_font_body_03_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public updateDownState()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setDownState()V

    return-void
.end method
