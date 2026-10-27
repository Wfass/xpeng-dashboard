.class public abstract Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;
.source "LluBaseFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LluBaseFragment"


# instance fields
.field protected mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

.field protected mFragmentTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->mFragmentTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract initViewModel()V
.end method

.method protected abstract initViewModelObserver()V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->vuiSceneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->sceneId:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->supportVui()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->initVuiScene()V

    :cond_0
    return-void
.end method

.method public onBuildScene()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onBuildScene()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onResume()V

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

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->initViewModelObserver()V

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->initViewModel()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    return-void
.end method

.method public removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected abstract supportVui()Z
.end method

.method protected vuiSceneId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
