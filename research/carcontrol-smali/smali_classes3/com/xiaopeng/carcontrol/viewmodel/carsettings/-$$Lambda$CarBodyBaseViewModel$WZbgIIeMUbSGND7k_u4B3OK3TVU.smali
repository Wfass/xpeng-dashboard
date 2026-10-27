.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$CarBodyBaseViewModel$WZbgIIeMUbSGND7k_u4B3OK3TVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$CarBodyBaseViewModel$WZbgIIeMUbSGND7k_u4B3OK3TVU;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$CarBodyBaseViewModel$WZbgIIeMUbSGND7k_u4B3OK3TVU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$CarBodyBaseViewModel$WZbgIIeMUbSGND7k_u4B3OK3TVU;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$CarBodyBaseViewModel$WZbgIIeMUbSGND7k_u4B3OK3TVU;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->lambda$showResetDialog$1$CarBodyBaseViewModel(ZLcom/xiaopeng/xui/app/XDialog;I)V

    return-void
.end method
