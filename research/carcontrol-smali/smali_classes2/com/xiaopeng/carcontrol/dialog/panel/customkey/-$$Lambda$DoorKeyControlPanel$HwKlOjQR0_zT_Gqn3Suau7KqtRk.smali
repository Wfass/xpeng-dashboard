.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$HwKlOjQR0_zT_Gqn3Suau7KqtRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$HwKlOjQR0_zT_Gqn3Suau7KqtRk;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$HwKlOjQR0_zT_Gqn3Suau7KqtRk;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->lambda$new$2$DoorKeyControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    return-void
.end method
