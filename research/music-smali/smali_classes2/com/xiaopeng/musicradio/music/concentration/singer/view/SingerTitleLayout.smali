.class public Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SingerTitleLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/music/concentration/singer/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerTitlePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;",
        "Lcom/xiaopeng/musicradio/music/concentration/singer/view/b;"
    }
.end annotation


# instance fields
.field private mTitleLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerTitlePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerTitlePresenter;
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerTitlePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/presenter/SingerTitlePresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 49
    sget v0, Lbez$d;->singer_root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget v1, Lbez$d;->singer_root_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 77
    sget v0, Lbez$f;->ms_layout_singer_title:I

    return v0
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerTitleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

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
