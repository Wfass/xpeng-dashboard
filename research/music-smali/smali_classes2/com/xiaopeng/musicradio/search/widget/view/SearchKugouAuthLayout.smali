.class public Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "SearchKugouAuthLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchKugouAuthLayout"


# instance fields
.field private mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 56
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 61
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private setLoginTips()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateLastLogin()V
    .locals 4

    .line 155
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lben;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kg"

    .line 157
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "kgwx"

    .line 160
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->vip_login_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_kugou_auth_mask:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onAttachedToWindow()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->setLoginTips()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->updateLastLogin()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->updateLastLogin()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->setLoginTips()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->updateLastLogin()V

    :cond_0
    return-void
.end method
