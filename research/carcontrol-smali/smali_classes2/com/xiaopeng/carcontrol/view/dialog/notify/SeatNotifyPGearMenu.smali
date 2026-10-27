.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;
.super Ljava/lang/Object;
.source "SeatNotifyPGearMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu$SingleHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatNotifyPGearMenu"

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->onInitViewModel()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doAllZeroReset()V
    .locals 24

    move-object/from16 v0, p0

    .line 45
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v9, 0x0

    aget v2, v2, v9

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v10, 0x1

    aget v3, v3, v10

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v11, 0x2

    aget v4, v4, v11

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v12, 0x3

    aget v5, v5, v12

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v13, 0x4

    aget v6, v6, v13

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v14, 0x5

    aget v7, v7, v14

    sget-object v8, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v15, 0x6

    aget v8, v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    .line 48
    iget-object v1, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v17, v2, v9

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v18, v2, v10

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v19, v2, v11

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v20, v2, v12

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v21, v2, v13

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v22, v2, v14

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    aget v23, v2, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v23}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public doRLZeroReset()V
    .locals 9

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatAllPositions(IIIIIII)V

    return-void
.end method

.method public doRRZeroReset()V
    .locals 9

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->DEFAULT_POSITION:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatAllPositions(IIIIIII)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-void
.end method
