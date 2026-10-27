.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;
.super Ljava/lang/Object;
.source "SeatSpeechNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatSpeechNotify"


# instance fields
.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doFoldAndStow(ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isFold",
            "isTrdLeft",
            "target"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-nez v0, :cond_0

    .line 28
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "doFoldAndStow  mSeatVm == null"

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTrdLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p3, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    goto :goto_0

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-ne p3, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    :goto_0
    return-void
.end method
