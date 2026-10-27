.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MsRmTitleLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;"
    }
.end annotation


# instance fields
.field private mChange:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

.field private mIsChange:Z

.field private mMore:Lcom/xiaopeng/xui/widget/XImageView;

.field private mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mIsChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setTitleListener()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 5

    const-string v0, ""

    .line 73
    sget v1, Lbez$d;->recommend_music_text:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 74
    sget v1, Lbez$d;->recommend_music_tips:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 75
    sget v1, Lbez$d;->more:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mMore:Lcom/xiaopeng/xui/widget/XImageView;

    .line 77
    sget v1, Lbez$d;->change:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 78
    sget v1, Lbez$d;->title_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "defaultExecElementId"

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    sget v2, Lbez$d;->rm_root_layout:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 140
    sget v0, Lbez$f;->ms_layout_rm_title:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 161
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mIsChange:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->handleRmData(Ljava/util/List;)V

    .line 163
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mIsChange:Z

    :cond_0
    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setTitleListener()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setFragment(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->music_main_selection_rm_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a(I)V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRmCount(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b(I)V

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->reviewOnScreenChange()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

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

.method public updateRmPlayState(Z)V
    .locals 0

    return-void
.end method
