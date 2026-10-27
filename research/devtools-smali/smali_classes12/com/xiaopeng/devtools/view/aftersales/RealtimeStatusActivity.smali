.class public Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "RealtimeStatusActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/aftersales/d;


# instance fields
.field private Ep:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

.field private Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

.field private Er:Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic b([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Er:Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->setAllStatus([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V

    return-void
.end method

.method public static synthetic lambda$UJiFFTDut86wKCFrjUHdgtMzVsg(Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->b([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V

    return-void
.end method


# virtual methods
.method public a([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RealtimeStatusActivity$UJiFFTDut86wKCFrjUHdgtMzVsg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RealtimeStatusActivity$UJiFFTDut86wKCFrjUHdgtMzVsg;-><init>(Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public fd()V
    .locals 2

    .line 21
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 22
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->setContentView(I)V

    .line 23
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iN()V

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iP()V

    .line 26
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;-><init>(Lcom/xiaopeng/devtools/view/aftersales/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Ep:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    .line 27
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Er:Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Er:Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Ep:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->im()[Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;->setAllStatus([Lcom/xiaopeng/devtools/bean/aftersales/RealtimeStatus;)V

    .line 29
    return-void
.end method

.method public fe()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 34
    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->mListView:Landroid/widget/ListView;

    .line 35
    return-void
.end method

.method public ff()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 46
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Er:Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Ep:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->destroy()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iO()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iQ()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RealtimeStatusActivity;->Ep:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->in()V

    .line 52
    return-void
.end method
