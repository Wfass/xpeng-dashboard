.class public Lcom/xiaopeng/unity/AppManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "AppManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/IAppManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/AppManager$SingleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/AppListener;",
        ">;",
        "Lcom/xiaopeng/unity/IAppManager;"
    }
.end annotation


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private final mUnityReceiver:Lcom/xiaopeng/unity/receiver/UnityReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/unity/receiver/UnityReceiver;

    invoke-direct {v0}, Lcom/xiaopeng/unity/receiver/UnityReceiver;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mUnityReceiver:Lcom/xiaopeng/unity/receiver/UnityReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/AppManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/unity/AppManager;-><init>()V

    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/AppManager;
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/unity/AppManager$SingleHolder;->access$000()Lcom/xiaopeng/unity/AppManager;

    move-result-object v0

    return-object v0
.end method

.method private registerBroadcastReceiverForNapa(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/unity/AppManager;->TAG:Ljava/lang/String;

    const-string v1, "registerBroadcastReceiverForNapa"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_MUTE_DIALOG"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_UNMUTE_DIALOG"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/unity/AppManager;->mUnityReceiver:Lcom/xiaopeng/unity/receiver/UnityReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected initInternal()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/AppManager;->registerBroadcastReceiverForNapa(Landroid/app/Application;)V

    .line 35
    new-instance v0, Lcom/xiaopeng/unity/-$$Lambda$AppManager$B-zIVhU-K8zk1oJ8ROK-yOJpgRM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/-$$Lambda$AppManager$B-zIVhU-K8zk1oJ8ROK-yOJpgRM;-><init>(Lcom/xiaopeng/unity/AppManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/AppManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnectedSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/AppListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/AppListener;->onCarServiceConnection(Z)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    return-void
.end method

.method public synthetic lambda$initInternal$0$AppManager(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isConnected"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCarServiceConnection"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/unity/AppManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$observeData$1$AppManager(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isConnected"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/AppListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/AppListener;->onCarServiceConnection(Z)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/-$$Lambda$AppManager$r6B5JKXulLOmSN344O9GJgQ1XPY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/-$$Lambda$AppManager$r6B5JKXulLOmSN344O9GJgQ1XPY;-><init>(Lcom/xiaopeng/unity/AppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->setListener(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper$ICarServiceConnectListener;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    const-string p2, "init"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/unity/AppManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/AppListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/AppListener;->onCarServiceConnection(Z)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/AppManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->exitSteerScene()V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/unity/AppManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->exitScene()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
