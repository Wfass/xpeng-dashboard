.class public Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MusicMainAuthLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/main/view/c;",
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/c;"
    }
.end annotation


# instance fields
.field private mIsVuiPlaying:Z

.field private mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mNeteaseLoging:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQQLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mThemeViewModel:Lapr;

.field private mVuiVisible:Z

.field private mWeiLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mIsVuiPlaying:Z

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mIsVuiPlaying:Z

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    .line 51
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 129
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mIsVuiPlaying:Z

    const/4 p3, 0x1

    .line 155
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    .line 56
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private setContent()V
    .locals 5

    .line 67
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private updateLastLogin()V
    .locals 4

    .line 197
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    .line 198
    invoke-interface {v0}, Lben;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qq"

    .line 199
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "wx"

    .line 202
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeAccountType()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setContent()V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;
    .locals 1

    .line 126
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 86
    sget v0, Lbez$d;->weixin_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 87
    sget v0, Lbez$d;->qq_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 88
    sget v0, Lbez$d;->weixin_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeixinLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 89
    sget v0, Lbez$d;->qq_last_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLastLogin:Lcom/xiaopeng/xui/widget/XTextView;

    .line 91
    sget v0, Lbez$d;->qq_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 92
    sget v0, Lbez$d;->netease_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mNeteaseContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 93
    sget v0, Lbez$d;->netease_login:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 81
    sget v0, Lbez$f;->music_layout_main_auth_mask:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 142
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mMenuIndex:I

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

    const/4 v0, 0x1

    .line 147
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVuiVisible()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setContent()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mWeiLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mQQLogin:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mNeteaseLoging:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->updateLastLogin()V

    :cond_0
    return-void
.end method

.method public setVuiVisible(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->mVuiVisible:Z

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :goto_0
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
