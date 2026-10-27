.class public Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "QQAuthLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QQAuthLayout"


# instance fields
.field private mIsVuiPlaying:Z

.field private mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVuiVisible:Z

.field private mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

.field private mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mIsVuiPlaying:Z

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mIsVuiPlaying:Z

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    .line 59
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p3, 0x0

    .line 138
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mIsVuiPlaying:Z

    const/4 p3, 0x1

    .line 155
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    .line 64
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private updateLastLogin()V
    .locals 4

    .line 200
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    .line 201
    invoke-interface {v0}, Lben;->o()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLastLogin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QQAuthLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "qq"

    .line 203
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "wx"

    .line 206
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

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

    .line 93
    sget v0, Lbez$d;->weixin_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 94
    sget v0, Lbez$d;->qq_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    .line 95
    sget v0, Lbez$d;->weixin_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 96
    sget v0, Lbez$d;->qq_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 97
    sget v0, Lbez$d;->login_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 98
    sget v0, Lbez$d;->vip_login_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 88
    sget v0, Lbez$f;->music_layout_qq_auth:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 142
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 147
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVuiVisible()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->updateLastLogin()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$b;->sp_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_musicalnste:I

    sget v3, Lbez$g;->music_main_selection_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_ranking_01:I

    sget v3, Lbez$g;->music_main_rank_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_singer:I

    sget v3, Lbez$g;->music_main_singer_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_me:I

    sget v3, Lbez$g;->tab_main_mine:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 194
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->setVisibility(I)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQAuthLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->updateLastLogin()V

    return-void
.end method

.method public setVuiVisible(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->mVuiVisible:Z

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public useCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
