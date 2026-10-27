.class public Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "NeteaseAuthLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NeteaseAuthLayout"


# instance fields
.field private mIsVuiPlaying:Z

.field private mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVuiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mIsVuiPlaying:Z

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mIsVuiPlaying:Z

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    .line 53
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p3, 0x0

    .line 123
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mIsVuiPlaying:Z

    const/4 p3, 0x1

    .line 140
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    .line 58
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private setContent()V
    .locals 0

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

    .line 90
    sget v0, Lbez$d;->netease_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

    .line 91
    sget v0, Lbez$d;->login_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 92
    sget v0, Lbez$d;->vip_login_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lbez$f;->music_layout_netease_auth:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 127
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mMenuIndex:I

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

    .line 132
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mMenuIndex:I

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

    .line 153
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->setContent()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$b;->sp_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVipLoginTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_musicalnste:I

    sget v3, Lbez$g;->music_main_selection_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_ranking_01:I

    sget v3, Lbez$g;->music_main_rank_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_singer:I

    sget v3, Lbez$g;->music_main_singer_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_me:I

    sget v3, Lbez$g;->tab_main_mine:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Z)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVuiVisible(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->mVuiVisible:Z

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getSceneId()Ljava/lang/String;

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
