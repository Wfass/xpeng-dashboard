.class public abstract Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;
.super Ljava/lang/Object;
.source "AbstractScene.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/xiaopeng/carcontrol/view/scene/VuiUtilHelper;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mParent:Landroid/view/View;

.field private final mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneId",
            "parent",
            "owner"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mSceneId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mParent:Landroid/view/View;

    .line 30
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method protected final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mParent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getContent()Landroid/view/View;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initViewModels()V
.end method

.method protected abstract initViews()V
.end method

.method protected final isVuiAction(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    return-void
.end method

.method protected onCreate()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->initViewModels()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->initViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mParent:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method protected onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final setLdo(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 1
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

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->mOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1, v0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected final updateXTabLayout(Lcom/xiaopeng/xui/widget/XTabLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    :cond_0
    return-void
.end method
