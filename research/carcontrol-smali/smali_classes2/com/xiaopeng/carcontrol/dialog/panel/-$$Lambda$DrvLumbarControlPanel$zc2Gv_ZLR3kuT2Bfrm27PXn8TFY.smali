.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$zc2Gv_ZLR3kuT2Bfrm27PXn8TFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$zc2Gv_ZLR3kuT2Bfrm27PXn8TFY;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$zc2Gv_ZLR3kuT2Bfrm27PXn8TFY;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->lambda$onRegisterLiveData$1$DrvLumbarControlPanel(Ljava/lang/Boolean;)V

    return-void
.end method
