.class Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;
.super Ljava/lang/Object;
.source "LluDanceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "McuCallbackImplForLlu"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "McuCallbackImplForLlu"


# instance fields
.field private final mLluDanceViewModelWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewModel"
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;->mLluDanceViewModelWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onIgStatusChanged$0$LluDanceViewModel$McuCallbackImplForLlu(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "state"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;->mLluDanceViewModelWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 574
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->cancelAlarmForDance(Landroid/content/Context;)V

    .line 576
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getIgEvent()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onIgStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 569
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ig status changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;I)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
