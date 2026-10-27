.class public Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MsRadioTitleLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRadioTitleLayout"


# instance fields
.field private mChange:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

.field private mIsChange:Z

.field private mRadioName:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mIsChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 56
    sget v0, Lbez$d;->change:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 57
    sget v0, Lbez$d;->radio_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mRadioName:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 84
    sget v0, Lbez$f;->ms_layout_radio_title:I

    return v0
.end method

.method public getRadioData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsRadioTitleLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mIsChange:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->handleRadioData(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mIsChange:Z

    :cond_0
    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setAccountType(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mRadioName:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->music_main_qq_radio_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mRadioName:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->music_main_kugou_radio_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mRadioName:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->music_main_netease_radio_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public setChange(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    return-void
.end method

.method public setCount(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b(I)V

    return-void
.end method

.method public setFragment(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a(I)V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

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

.method public updateRadioPlayState(Z)V
    .locals 0

    return-void
.end method
