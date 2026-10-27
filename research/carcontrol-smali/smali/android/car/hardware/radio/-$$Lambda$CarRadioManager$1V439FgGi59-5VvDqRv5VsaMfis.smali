.class public final synthetic Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$1V439FgGi59-5VvDqRv5VsaMfis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/hardware/radio/CarRadioManager;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/radio/CarRadioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$1V439FgGi59-5VvDqRv5VsaMfis;->f$0:Landroid/car/hardware/radio/CarRadioManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$1V439FgGi59-5VvDqRv5VsaMfis;->f$0:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->lambda$setPowerOnTunner$0$CarRadioManager()V

    return-void
.end method
