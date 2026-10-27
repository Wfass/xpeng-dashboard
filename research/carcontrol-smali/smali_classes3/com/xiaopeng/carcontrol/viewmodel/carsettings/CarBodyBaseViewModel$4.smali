.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$4;
.super Landroid/database/ContentObserver;
.source "CarBodyBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 378
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBodyBaseViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "left_charge_port_state"

    .line 383
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 385
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 387
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleChargePortChanged(ZI)V

    goto :goto_0

    :cond_0
    const-string p2, "right_charge_port_state"

    .line 388
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 390
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 392
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleChargePortChanged(ZI)V

    :cond_1
    :goto_0
    return-void
.end method
