.class public Lcom/xiaopeng/unity/lludance/LluDanceManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "LluDanceManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/lludance/ILluDanceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/lludance/LluDanceManager$SingleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/lludance/LluDanceListener;",
        ">;",
        "Lcom/xiaopeng/unity/lludance/ILluDanceManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LluDanceManager"


# instance fields
.field private final lluDanceDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mGson:Lcom/google/gson/Gson;

.field private mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mGson:Lcom/google/gson/Gson;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/lludance/LluDanceManager;)Lcom/google/gson/Gson;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mGson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private findDanceDataById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static get_instance()Lcom/xiaopeng/unity/lludance/LluDanceManager;
    .locals 1

    .line 34
    invoke-static {}, Lcom/xiaopeng/unity/lludance/LluDanceManager$SingleHolder;->access$000()Lcom/xiaopeng/unity/lludance/LluDanceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelAlarmForDance()V
    .locals 2

    .line 321
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelAlarmForDance: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/xiaopeng/carcontrol/UnityApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->cancelAlarmForDance(Landroid/content/Context;)V

    return-void
.end method

.method public disableWakeup()V
    .locals 2

    .line 294
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "disableWakeup: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->disableWakeup()V

    return-void
.end method

.method public enableWakeup()V
    .locals 2

    .line 283
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "enableWakeup: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->enableWakeup()V

    return-void
.end method

.method public executeWindowAndVolume()V
    .locals 2

    .line 359
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "executeWindowAndVolume "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->preliminaryWork()V

    return-void
.end method

.method public getAllData()V
    .locals 2

    .line 88
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "getAllData: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getAllData()V

    return-void
.end method

.method public getLightDanceAvailable()I
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLightDanceAvailable()I

    move-result v0

    .line 244
    sget-object v1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLightDanceAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 42
    :cond_0
    new-instance v0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;-><init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$LluDanceManager(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/lludance/LluDanceListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceListener;->onLluDanceDataChanged(Ljava/util/List;)V

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v0, "onLluDanceDataChanged:lluDanceViewData is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 104
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lluDanceDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public synthetic lambda$observeData$1$LluDanceManager(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "igState"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIgStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/lludance/LluDanceListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceListener;->onIgStateChange(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$LluDanceManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "danceBreak"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDanceBreak: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/lludance/LluDanceListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceListener;->onDanceBreak(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$LluDanceManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "playState"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXuiManagerNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/lludance/LluDanceListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceListener;->onXuiManagerNotify(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public needOpenWindowWhenPlayLlu(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needOpenWindowWhenPlayLlu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLluAutoWindow(Z)V

    return-void
.end method

.method public needTurnUpVolumeWhenPlayLlu(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnUp"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needTurnUpVolumeWhenPlayLlu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLluAutoVolume(Z)V

    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLiveDataList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$83zI5KMIOalZZGwiszaGVEeg7uQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$83zI5KMIOalZZGwiszaGVEeg7uQ;-><init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getIgEvent()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$TO6wsHqWlV1gmRELUD7oiqfRThQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$TO6wsHqWlV1gmRELUD7oiqfRThQ;-><init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceBreak()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$Ddte3dAcFC8jNDvzJq0oh7W1mAM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$Ddte3dAcFC8jNDvzJq0oh7W1mAM;-><init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$sLSBUZf_E4PoO0auwmQBXZxwASw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$sLSBUZf_E4PoO0auwmQBXZxwASw;-><init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
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

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getLightDanceAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setAlarmForDance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "startDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "needTurnUpVolumeWhenPlayLlu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "resumeDownload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "cancelAlarmForDance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "pauseDownLoad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "needOpenWindowWhenPlayLlu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "disableWakeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "enableWakeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v5, v1

    goto :goto_0

    :sswitch_a
    const-string v0, "executeWindowAndVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v5, v2

    goto :goto_0

    :sswitch_b
    const-string v0, "stopPlayLlu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v5, v3

    goto :goto_0

    :sswitch_c
    const-string v0, "startPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 180
    sget-object p2, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->getLightDanceAvailable()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 164
    :pswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v4, [Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 165
    :goto_1
    aget-object v6, p1, v4

    aget-object v7, p1, v3

    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aget-object v10, p1, v1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->setAlarmForDance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    .line 140
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->startDownload(Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->needTurnUpVolumeWhenPlayLlu(Z)V

    goto :goto_2

    .line 146
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->resumeDownload(Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->cancelAlarmForDance()V

    goto :goto_2

    .line 143
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->pauseDownLoad(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :pswitch_7
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->needOpenWindowWhenPlayLlu(Z)V

    goto :goto_2

    .line 161
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->disableWakeup()V

    goto :goto_2

    .line 158
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->enableWakeup()V

    goto :goto_2

    .line 177
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->executeWindowAndVolume()V

    goto :goto_2

    .line 155
    :pswitch_b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->stopPlayLlu()V

    goto :goto_2

    .line 152
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->startPlay(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_e

    .line 183
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_e
    const-string p1, ""

    :goto_4
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eec3d4a -> :sswitch_c
        -0x69ffb341 -> :sswitch_b
        -0x63f3b674 -> :sswitch_a
        -0x5ecb955e -> :sswitch_9
        -0x2c5ef7b9 -> :sswitch_8
        -0x1cf097a9 -> :sswitch_7
        -0x1af38f42 -> :sswitch_6
        -0x19bd227f -> :sswitch_5
        0xb0277d5 -> :sswitch_4
        0x13e91c7f -> :sswitch_3
        0x5cae6f0a -> :sswitch_2
        0x61272899 -> :sswitch_1
        0x78eff3d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseDownLoad(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->findDanceDataById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownLoad: id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_0

    const-string v2, "data is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->pauseDownLoad(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    :cond_1
    return-void
.end method

.method public resumeDownload(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->findDanceDataById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownload: id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_0

    const-string v2, "data is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->resumeDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    :cond_1
    return-void
.end method

.method public setAlarmForDance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resId",
            "effectName",
            "orderedTime",
            "title"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlarmForDance: resId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderedTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/xiaopeng/carcontrol/UnityApp;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->setAlarmForDance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->findDanceDataById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownload: id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_0

    const-string v2, "data is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->startDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    :cond_1
    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->findDanceDataById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay: id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v0, :cond_0

    const-string v2, "data is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->startPlay(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I

    :cond_1
    return-void
.end method

.method public stopPlayLlu()V
    .locals 2

    .line 272
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->TAG:Ljava/lang/String;

    const-string v1, "stopPlayLlu: "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager;->mLluDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->stopPlayLlu()V

    return-void
.end method

.method public triggerAlarm(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "triggerAlarm"

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
