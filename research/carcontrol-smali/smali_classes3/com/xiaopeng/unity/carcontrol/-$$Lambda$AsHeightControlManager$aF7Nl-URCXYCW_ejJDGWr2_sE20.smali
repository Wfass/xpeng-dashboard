.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AsHeightControlManager$aF7Nl-URCXYCW_ejJDGWr2_sE20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AsHeightControlManager$aF7Nl-URCXYCW_ejJDGWr2_sE20;->f$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AsHeightControlManager$aF7Nl-URCXYCW_ejJDGWr2_sE20;->f$0:Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->lambda$observeData$0$AsHeightControlManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)V

    return-void
.end method
