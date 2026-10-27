.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$N3LHoYTPDWCRX9QVhY_c_mc3icM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$N3LHoYTPDWCRX9QVhY_c_mc3icM;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$N3LHoYTPDWCRX9QVhY_c_mc3icM;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->lambda$onRegisterLiveData$0$SeatSettingPanel(Ljava/lang/Boolean;)V

    return-void
.end method
