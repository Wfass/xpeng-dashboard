.class public Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;
.super Ljava/lang/Object;
.source "ShowCarControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final SHOW_CAR_DRIVE_SWITCH:Ljava/lang/String; = "vcu_disable"

.field private static final SHOW_CAR_HVAC_SWITCH:Ljava/lang/String; = "airCondition_disable"

.field private static final TAG:Ljava/lang/String; = "ShowCarControl"


# instance fields
.field private mIsShowCarDriveDisable:Z

.field private mIsShowCarHvacDisable:Z

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getShowCarHvacMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarHvacDisable:Z

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getShowCarDriveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarDriveDisable:Z

    .line 33
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarHvacDisable:Z

    sput-boolean v0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->EXHIBITION_MODE:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarHvacDisable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;)Z
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getShowCarHvacMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->onShowCarModeChange()V

    return-void
.end method

.method static synthetic access$502(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarDriveDisable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;)Z
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->getShowCarDriveMode()Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;

    move-result-object v0

    return-object v0
.end method

.method private getShowCarDriveMode()Z
    .locals 5

    const-string v0, "ShowCarControl"

    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vcu_disable"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 76
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 78
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowCarDrive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getShowCarHvacMode()Z
    .locals 5

    const-string v0, "ShowCarControl"

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airCondition_disable"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 65
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 67
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowCarHvac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private onShowCarModeChange()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarHvacDisable:Z

    sput-boolean v0, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->EXHIBITION_MODE:Z

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarDriveDisable:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;->controlExhibitionMode(Z)V

    return-void
.end method


# virtual methods
.method public isShowCarDriveDisable()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarDriveDisable:Z

    return v0
.end method

.method public isShowCarHvacDisable()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mIsShowCarHvacDisable:Z

    return v0
.end method

.method public registerResolver()V
    .locals 5

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    .line 38
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airCondition_disable"

    .line 39
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$1;

    const/4 v3, 0x0

    .line 41
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;Landroid/os/Handler;)V

    const/4 v4, 0x1

    .line 39
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vcu_disable"

    .line 49
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$2;

    .line 51
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ShowCarControl;Landroid/os/Handler;)V

    .line 49
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
