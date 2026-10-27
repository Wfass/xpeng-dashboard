.class public Lcom/xiaopeng/unity/carcontrol/AtlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "AtlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IAtlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/AtlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/AtlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IAtlManager;"
    }
.end annotation


# instance fields
.field private mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AtlManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkAtlBrightness(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffect"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 298
    sget-object v3, Lcom/xiaopeng/unity/carcontrol/AtlManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAtlBrightness()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->checkAtlBrightness(I)I

    move-result v0

    return v0
.end method

.method public getAtlColorMode()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_color_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getAtlEffect()I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_effect:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I

    move-result v0

    return v0
.end method

.method public getAtlFrontWindshieldSw()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_front_windshield_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlSpeakerSwEnabled()Z

    move-result v0

    return v0
.end method

.method public getAtlRgbDoubleColor()Ljava/lang/String;
    .locals 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualFirstColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualSecondColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtlRgbMemoryDualColor()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlRgbMemoryDualColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtlRgbMemorySingleColor()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlRgbMemorySingleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleColor()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_double_color:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result v0

    return v0
.end method

.method public getSingleColor()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_single_color:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    .line 32
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isAtlSwEnable()Z
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$1$AtlManager(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "atlEffect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtlEffectChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->convertAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlEffectChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$AtlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onSingleColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$AtlManager(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getDoubleColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onDoubleColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$AtlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlRgbDoubleFirstColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$AtlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlRgbDoubleSecondColorChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$AtlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlBrightnessChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$AtlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$AtlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlColorModeChanged(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$9$AtlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/AtlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlListener;->onAtlFrontWindshieldSwChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRealCall$0$AtlManager(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "param"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setAtlEffect(I)V

    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffectTypeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$SutcuXJZqHHBd8dnthTVMacUQh4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$SutcuXJZqHHBd8dnthTVMacUQh4;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlFirstColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8H2SqXpakp67UfOj6JzkpdKIyWY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8H2SqXpakp67UfOj6JzkpdKIyWY;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSecondColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8BhL0UsiSAG3h57VC1ECCg4dPII;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8BhL0UsiSAG3h57VC1ECCg4dPII;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlRgbDoubleFirstColor()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$KQ8C7YQKI4QooxO4KDB_hLyfrjI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$KQ8C7YQKI4QooxO4KDB_hLyfrjI;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlRgbDoubleSecondColor()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$Tvbqc4nJHTSEpUKl0h8c7erg4KI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$Tvbqc4nJHTSEpUKl0h8c7erg4KI;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$4qdqijuTD6mWvnsXqAomfq36IGM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$4qdqijuTD6mWvnsXqAomfq36IGM;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSwitchData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$Jo9_XwOFvE_nUf_fJTFT-_eCjbE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$Jo9_XwOFvE_nUf_fJTFT-_eCjbE;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualColorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$wylrgkQL02vclwwn36S-J6hzjkM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$wylrgkQL02vclwwn36S-J6hzjkM;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSpeakerSwitchData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$rk9qPXPayMHeo05Tfvq0CTI4ED0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$rk9qPXPayMHeo05Tfvq0CTI4ED0;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
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

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getDoubleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getSingleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "setAtlEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setAtlSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "getAtlRgbDoubleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setAtlRgbDoubleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "setAtlRgbSingleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "isAtlSwEnable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "setAtlFrontWindshieldSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "setDoubleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getAtlEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "setSingleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "getAtlBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "setAtlColorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "getAtlColorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "getAtlRgbMemoryDoubleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "getAtlRgbMemorySingleColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    move v4, v1

    goto :goto_0

    :sswitch_11
    const-string v0, "getAtlFrontWindshieldSw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    move v4, v3

    goto :goto_0

    :sswitch_12
    const-string v0, "setAtlBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    move v4, v2

    :goto_0
    const-string v0, ","

    packed-switch v4, :pswitch_data_0

    .line 152
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getDoubleColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getSingleColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 94
    :pswitch_2
    new-instance p1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;-><init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 88
    :pswitch_3
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setAtlSw(Z)V

    goto/16 :goto_1

    .line 120
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlRgbDoubleColor()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_5
    if-eqz p2, :cond_13

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 128
    array-length p2, p1

    if-le p2, v1, :cond_13

    .line 129
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setRgbDoubleColor(III)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz p2, :cond_13

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 111
    array-length p2, p1

    if-le p2, v3, :cond_13

    .line 112
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setRgbSingleColor(II)V

    goto :goto_1

    .line 85
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->isAtlSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 149
    :pswitch_8
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setAtlFrontWindshieldSw(Z)V

    goto :goto_1

    .line 123
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setDoubleColor(I)V

    goto :goto_1

    .line 91
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlEffect()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 106
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setSingleColor(I)V

    goto :goto_1

    .line 134
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlBrightness()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 100
    :pswitch_d
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setAtlColorMode(I)V

    goto :goto_1

    .line 97
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlColorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 143
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlRgbMemoryDualColor()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 140
    :pswitch_10
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlRgbMemorySingleColor()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 146
    :pswitch_11
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlFrontWindshieldSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 137
    :pswitch_12
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->setAtlBrightness(I)V

    :cond_13
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_14

    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_14
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65b60578 -> :sswitch_12
        -0x64d7c0a5 -> :sswitch_11
        -0x55a7fd10 -> :sswitch_10
        -0x4edca6f9 -> :sswitch_f
        -0x409f787d -> :sswitch_e
        -0xa567d71 -> :sswitch_d
        0x7739414 -> :sswitch_c
        0x776e239 -> :sswitch_b
        0xc107ad4 -> :sswitch_a
        0xe423850 -> :sswitch_9
        0x157b6e67 -> :sswitch_8
        0x15c39736 -> :sswitch_7
        0x1a395fa5 -> :sswitch_6
        0x2104b5bc -> :sswitch_5
        0x456ea948 -> :sswitch_4
        0x52b9039b -> :sswitch_3
        0x68643b48 -> :sswitch_2
        0x71116ec5 -> :sswitch_1
        0x77dcc4dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public setAtlBrightness(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_brightness:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->checkAtlBrightness(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlBrightnessValue(I)V

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_ambient_brightness"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAtlColorMode(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_color_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlThemeColorMode(Z)V

    .line 343
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_ambient_color_mode"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAtlEffect(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_effect:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 279
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 276
    :cond_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    goto :goto_0

    .line 273
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    :goto_0
    if-eqz v0, :cond_4

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V

    .line 290
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_ambient_effect"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAtlFrontWindshieldSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_front_windshield_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSpeakerSwEnabled(Z)V

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_ambient_front_windshield_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAtlSw(Z)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_sw:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSwitch(Z)V

    .line 231
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "lamp_ambient_sw"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDoubleColor(I)V
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_double_color:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlDualColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    .line 403
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_ambient_double_color"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRgbDoubleColor(III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "index"
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->lamp_ambient_rgb_double_color:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlRgbDualColor(IIIZZ)V

    return-void
.end method

.method public setRgbSingleColor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "index"
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->lamp_ambient_rgb_single_color:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlRgbSingleColor(IIZZ)V

    return-void
.end method

.method public setSingleColor(I)V
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->lamp_ambient_single_color:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/AtlManager;->mAtlVm:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lamp_ambient_single_color"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
