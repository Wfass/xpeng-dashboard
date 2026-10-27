.class public Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;
.super Ljava/lang/Object;
.source "CarInfoViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/carinfo/ICarInfoViewModel;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mCarInfoCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;

.field private mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

.field private final mCarLicensePlateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarInfoViewModel"

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarLicensePlateData:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/-$$Lambda$CarInfoViewModel$W7RDMq38yt5bBK_UVamm09UcM8c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/-$$Lambda$CarInfoViewModel$W7RDMq38yt5bBK_UVamm09UcM8c;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarInfoCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;

    .line 25
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_CarInfoService"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    .line 27
    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method private handleCarLicensePlate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "licensePlate"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarLicensePlateData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$W7RDMq38yt5bBK_UVamm09UcM8c(Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->handleCarLicensePlate(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCarLicensePlate()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;->requestCarLicensePlate()V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarInfoController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;->getCarLicensePlate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarLicensePlateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;->mCarLicensePlateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
