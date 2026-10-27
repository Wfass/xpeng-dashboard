.class public final Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;
.super Ljava/lang/Object;
.source "ViewModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewModelManager"


# instance fields
.field private mCarType:Ljava/lang/String;

.field private final mViewModelsCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mViewModelsCache:Ljava/util/Hashtable;

    .line 97
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewModelManager init: car type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cdy type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewModelManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;-><init>()V

    return-void
.end method

.method private createViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 166
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    if-ne p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModelFactory;->createViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 168
    :cond_0
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    if-ne p1, v0, :cond_1

    .line 169
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;-><init>()V

    goto/16 :goto_0

    .line 170
    :cond_1
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    if-ne p1, v0, :cond_2

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModelFactory;->createSeatViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 172
    :cond_2
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    if-ne p1, v0, :cond_3

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModelFactory;->createWindowDoorViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 174
    :cond_3
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    if-ne p1, v0, :cond_4

    .line 175
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModelFactory;->createViewModel()Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 176
    :cond_4
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    if-ne p1, v0, :cond_5

    .line 177
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;-><init>()V

    goto/16 :goto_0

    .line 178
    :cond_5
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    if-ne p1, v0, :cond_6

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModelFactory;->createChassisViewModel()Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 180
    :cond_6
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    if-ne p1, v0, :cond_7

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModelFactory;->createCarBodyViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 182
    :cond_7
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    if-ne p1, v0, :cond_8

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModelFactory;->createVcuViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 184
    :cond_8
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/IScreenageSettingsViewModel;

    if-ne p1, v0, :cond_9

    .line 185
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;-><init>()V

    goto/16 :goto_0

    .line 186
    :cond_9
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    if-ne p1, v0, :cond_a

    .line 187
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;-><init>()V

    goto/16 :goto_0

    .line 188
    :cond_a
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    if-ne p1, v0, :cond_b

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModelFactory;->createMirrorViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 190
    :cond_b
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    if-ne p1, v0, :cond_c

    .line 191
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModelFactory;->createLluViewModel()Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 192
    :cond_c
    const-class v0, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    if-ne p1, v0, :cond_d

    .line 193
    new-instance p1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;-><init>()V

    goto/16 :goto_0

    .line 194
    :cond_d
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    if-ne p1, v0, :cond_e

    .line 195
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModelFactory;->createAtlViewModel()Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 196
    :cond_e
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    if-ne p1, v0, :cond_f

    .line 197
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModelFactory;->createCiuViewModel()Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 198
    :cond_f
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/tbox/ITboxViewModel;

    if-ne p1, v0, :cond_10

    .line 199
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/tbox/TBoxViewModel;-><init>()V

    goto/16 :goto_0

    .line 200
    :cond_10
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    if-ne p1, v0, :cond_11

    .line 201
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;-><init>()V

    goto/16 :goto_0

    .line 202
    :cond_11
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    if-ne p1, v0, :cond_12

    .line 203
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModelFactory;->createXpuViewModel()Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    move-result-object p1

    goto/16 :goto_0

    .line 204
    :cond_12
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/ICarInfoViewModel;

    if-ne p1, v0, :cond_13

    .line 205
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carinfo/CarInfoViewModel;-><init>()V

    goto/16 :goto_0

    .line 206
    :cond_13
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    if-ne p1, v0, :cond_14

    .line 207
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;-><init>()V

    goto/16 :goto_0

    .line 208
    :cond_14
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/ISfsViewModel;

    if-ne p1, v0, :cond_15

    .line 209
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;-><init>()V

    goto :goto_0

    .line 210
    :cond_15
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    if-ne p1, v0, :cond_16

    .line 211
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModelFactory;->createSpaceCapsuleViewModel()Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_16
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    if-ne p1, v0, :cond_17

    .line 213
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;-><init>()V

    goto :goto_0

    .line 214
    :cond_17
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-ne p1, v0, :cond_18

    .line 215
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;-><init>()V

    goto :goto_0

    .line 216
    :cond_18
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/IEnduranceViewModel;

    if-ne p1, v0, :cond_19

    .line 217
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;-><init>()V

    goto :goto_0

    .line 218
    :cond_19
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/locale/ILocaleViewModel;

    if-ne p1, v0, :cond_1a

    .line 219
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/locale/LocaleViewModel;-><init>()V

    goto :goto_0

    .line 220
    :cond_1a
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IArsViewModel;

    if-ne p1, v0, :cond_1b

    .line 221
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;-><init>()V

    goto :goto_0

    .line 222
    :cond_1b
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/IADriveSystemViewModel;

    if-ne p1, v0, :cond_1c

    .line 223
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;-><init>()V

    goto :goto_0

    .line 224
    :cond_1c
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/camera/ICameraAuthViewModel;

    if-ne p1, v0, :cond_1d

    .line 225
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;-><init>()V

    goto :goto_0

    .line 226
    :cond_1d
    const-class v0, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    if-ne p1, v0, :cond_1e

    .line 227
    new-instance p1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-direct {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;-><init>()V

    :goto_0
    return-object p1

    .line 229
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view model class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCarType()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mCarType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mViewModelsCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    monitor-exit v0

    return-object v1

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->createViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mViewModelsCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 141
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eq p1, v0, :cond_1

    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    if-eq p1, v0, :cond_1

    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 142
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mViewModelsCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 147
    :cond_2
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-ne p1, v1, :cond_3

    .line 148
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;-><init>()V

    goto :goto_1

    .line 150
    :cond_3
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    if-ne p1, v1, :cond_4

    .line 151
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;-><init>()V

    goto :goto_1

    .line 152
    :cond_4
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    if-ne p1, v1, :cond_5

    .line 153
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;-><init>()V

    .line 155
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->mViewModelsCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
