.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;
.source "MirrorViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorViewModel"


# instance fields
.field private final mCmsAutoBrightSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsBrightData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsHighSpdSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsLowSpdSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsObjectRecognizeSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsReverseSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsTurnSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmsViewAngleData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsBrightLevelData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsHighSpeedAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImsMode:I

.field private final mImsModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsSystemStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsVisionAngleLevelData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsVisionVerticalLevelData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftMirrorPosData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mMirrorAutoDownData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMirrorAutoFoldEnable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMirrorOutputData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMirrorPanelShowData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMirrorReverseMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightMirrorPosData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private prevRearScreenState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;-><init>()V

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorReverseMode:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorAutoDownData:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorAutoFoldEnable:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsObjectRecognizeSwData:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsReverseSwData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsTurnSwData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsHighSpdSwData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsLowSpdSwData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsAutoBrightSwData:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsBrightData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsViewAngleData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorPanelShowData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsHighSpeedAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsBrightLevelData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsModeData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsSystemStData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionAngleLevelData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionVerticalLevelData:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mLeftMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mRightMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorOutputData:Landroidx/lifecycle/MutableLiveData;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearScreenState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->prevRearScreenState:I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsMode:I

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getCmsAutoBrightSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsAutoBrightSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsBrightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsBrightData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsHighSpdSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsHighSpdSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsLowSpdSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsLowSpdSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsObjectRecognizeSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsObjectRecognizeSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsReverseSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsReverseSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsTurnSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsTurnSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCmsViewAngleData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsViewAngleData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsAutoVisionSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsBrightLevelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsBrightLevelData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsHighSpeedAutoVisionSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsHighSpeedAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsSystemStData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsSystemStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsVisionAngleLevelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionAngleLevelData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getImsVisionVerticalLevelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionVerticalLevelData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftMirrorPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mLeftMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorAutoDownData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorAutoDownData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorAutoFoldEnable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorAutoFoldEnable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorFoldData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorOutputData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorOutputData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorPanelShowData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorPanelShowData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMirrorReverseData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorReverseMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightMirrorPosData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mRightMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected handleAutoFoldStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorAutoFoldEnable:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsAutoBrightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsAutoBrightSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsBrightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsBrightData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsHighSpdSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsHighSpdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsLowSpdSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsLowSpdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsObjectRecognizeSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsObjectRecognizeSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsReverseSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsReverseSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsTurnSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsTurnSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCmsViewAngleChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mCmsViewAngleData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorBaseViewModel;->handleFoldStateChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsAutoVisionSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsBrightLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsBrightLevelData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsHighSpeedAutoVisionSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsHighSpeedAutoVisionSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsModeChanged: mImsMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isImsModeChangeByUser()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 181
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setImsModeChangeByUser(Z)V

    .line 183
    :cond_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsMode:I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsSystemStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsSystemStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsVisionAngleLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionAngleLevelData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleImsVisionVerticalLevelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mImsVisionVerticalLevelData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftMirrorPosStChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mLeftMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRightRearMirrorPosStatus()I

    move-result v0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->convertMirrorPosSt(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleMirrorAutoDownChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method protected handleMirrorOutputStChange([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->convertMirrorOutputSt([I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorOutputData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRearScreenStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "isSupportIms"

    .line 142
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isSupportRearScreen"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRearScreenStateChanged, prevRearScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->prevRearScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->prevRearScreenState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsAutoModeReq(I)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setImsModeChangeByUser(Z)V

    .line 149
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ims_auto_opened:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getImsMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isImsModeChangeByUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setImsAutoModeReq(I)V

    .line 154
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ims_auto_closed:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 156
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setImsModeChangeByUser(Z)V

    .line 158
    :cond_2
    :goto_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->prevRearScreenState:I

    :cond_3
    return-void
.end method

.method protected handleReverseModeChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorReverseMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightMirrorPosStChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mRightMirrorPosData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRightRearMirrorPosStatus()I

    move-result v0

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->convertMirrorPosSt(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorFoldData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public moveToExhibitionPos()V
    .locals 6

    const-string v0, "isSupportMirrorMemory"

    .line 333
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Mirror;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getMirrorDefaultPos"

    .line 335
    invoke-static {v3, v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/bean/Mirror;->updateNormalPosition([I)V

    .line 336
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save current mirror position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/Mirror;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->saveMirrorPos(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->syncAccountMirrorPos(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showMirrorCtrlPanel(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->mMirrorPanelShowData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
