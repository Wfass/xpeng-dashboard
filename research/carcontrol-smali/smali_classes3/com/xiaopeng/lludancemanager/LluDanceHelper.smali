.class public Lcom/xiaopeng/lludancemanager/LluDanceHelper;
.super Ljava/lang/Object;
.source "LluDanceHelper.java"


# static fields
.field private static final LLU_DANCE_AVAILABLE:I = 0x0

.field public static final LLU_RES_NULL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LluDanceHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLightDanceAvailable()Z
    .locals 4

    .line 15
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 17
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLightDanceAvailable()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 18
    sget-object v1, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log about start play video result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->showAlertForStateNotMatch(I)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log about checkLightDance NOT Available result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static getLluStateResByResult(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    shr-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    sget-object p0, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->TAG:Ljava/lang/String;

    const-string v0, "Karl log \u64ad\u653e\u706f\u821e\u6761\u4ef6\u4e0d\u6ee1\u8db3, \u6b63\u5728\u6253\u7535\u8bdd"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget p0, Lcom/xiaopeng/lludancemanager/R$string;->llu_effect_condition_on_call_disable:I

    return p0

    .line 64
    :cond_0
    rem-int/lit8 v0, p0, 0x2

    if-ne v0, v1, :cond_1

    .line 66
    sget-object p0, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->TAG:Ljava/lang/String;

    const-string v0, "Karl log \u64ad\u653e\u706f\u821e\u6761\u4ef6\u4e0d\u6ee1\u8db3,\u5f53\u524d\u975eP\u6863"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget p0, Lcom/xiaopeng/lludancemanager/R$string;->llu_effect_condition_disable:I

    return p0

    :cond_1
    shr-int/2addr p0, v1

    .line 69
    rem-int/lit8 p0, p0, 0x2

    if-ne p0, v1, :cond_2

    .line 71
    sget-object p0, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->TAG:Ljava/lang/String;

    const-string v0, "Karl log \u64ad\u653e\u706f\u821e\u6761\u4ef6\u4e0d\u6ee1\u8db3, \u5f53\u524d\u8f6c\u5411\u706f\u6fc0\u6d3b\u4e2d"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget p0, Lcom/xiaopeng/lludancemanager/R$string;->llu_effect_condition_disable:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getLluStateTips()I
    .locals 4

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 46
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLightDanceAvailable()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 47
    sget-object v1, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log about start play video result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->getLluStateResByResult(I)I

    move-result v0

    return v0
.end method

.method public static showAlertForStateNotMatch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewResult"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->getLluStateResByResult(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method
