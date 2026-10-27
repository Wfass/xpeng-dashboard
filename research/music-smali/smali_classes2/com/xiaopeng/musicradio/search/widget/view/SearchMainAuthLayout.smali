.class public Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "SearchMainAuthLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/widget/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/search/widget/view/a;",
        "Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/widget/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchMainAuthLayout"


# instance fields
.field private mIsVuiPlaying:Z

.field private mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

.field private mNeteaseVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mQQVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mIsVuiPlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mIsVuiPlaying:Z

    .line 57
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p3, 0x0

    .line 149
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mIsVuiPlaying:Z

    .line 62
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private setLoginTips()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateLastLogin()V
    .locals 4

    .line 192
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    .line 193
    invoke-interface {v0}, Lben;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    .line 194
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "wx"

    .line 197
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeAccountType()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->createPresenter()Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;
    .locals 1

    .line 146
    new-instance v0, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->weixin_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->qq_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->netease_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->netease_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->vip_login_tips_qq:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 99
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->vip_login_tips_netease:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_main_auth_mask:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 174
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onAttachedToWindow()V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 169
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->setLoginTips()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->setContent(I)V

    return-void
.end method

.method public setContent(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$3;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->setLoginTips()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->updateLastLogin()V

    :cond_0
    return-void
.end method

.method public updatePlayState(Z)V
    .locals 0

    return-void
.end method

.method public useCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
