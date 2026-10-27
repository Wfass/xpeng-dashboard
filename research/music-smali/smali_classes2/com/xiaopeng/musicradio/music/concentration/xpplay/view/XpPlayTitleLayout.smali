.class public Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "XpPlayTitleLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/c;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayTitlePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/c;"
    }
.end annotation


# instance fields
.field private mCategoryId:Ljava/lang/String;

.field private mChange:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "0"

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mCategoryId:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "0"

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mCategoryId:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "0"

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mCategoryId:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mCategoryId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayTitlePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayTitlePresenter;
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayTitlePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayTitlePresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 66
    sget v0, Lbez$d;->recommend_music_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 67
    sget v0, Lbez$d;->change:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 68
    sget v0, Lbez$d;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    sget v1, Lbez$d;->xp_play_root_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 114
    sget v0, Lbez$f;->ms_layout_xp_play_title:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mCategoryId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mName:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget p2, Lbez$g;->music_main_selection_xpplay_title:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->reviewOnScreenChange()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
