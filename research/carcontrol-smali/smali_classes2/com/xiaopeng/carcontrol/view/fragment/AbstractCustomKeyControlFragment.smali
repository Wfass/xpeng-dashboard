.class public abstract Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "AbstractCustomKeyControlFragment.java"


# instance fields
.field protected mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

.field private final mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

.field protected mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field protected mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$X4Xhpt_mFO_WvTYswsSeb7MHDU8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$X4Xhpt_mFO_WvTYswsSeb7MHDU8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->getBackgroundId()I

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a010e

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :cond_0
    const v0, 0x7f0a00e4

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    .line 70
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$AbstractCustomKeyControlFragment$cA5KD6saLGSLLbrqsjsCiA1vSxA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$AbstractCustomKeyControlFragment$cA5KD6saLGSLLbrqsjsCiA1vSxA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "generalAct"

    const-string v3, "System.Close"

    .line 78
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->getTitleId()I

    move-result v0

    const v1, 0x7f0a0360

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiFatherElementId(Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0a0110

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 91
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 93
    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;I)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->getTitleList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;-><init>(Ljava/util/List;Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$OnItemCheckedListener;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    .line 110
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initRecyclerView(Lcom/xiaopeng/xui/widget/XRecyclerView;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRefresh()V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRegisterLiveData()V

    return-void
.end method


# virtual methods
.method protected abstract getBackgroundId()I
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0021

    return v0
.end method

.method protected abstract getTitleId()I
.end method

.method protected abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected initViewModels()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    return-void
.end method

.method public synthetic lambda$initView$0$AbstractCustomKeyControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 59
    instance-of v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onDestroyView()V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onShowSettingTip()V

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 0

    return-void
.end method

.method protected onShowSettingTip()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract setCustomKey(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method
