.class public final synthetic Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$rJB1H5L7kveLoM9G-WEeshDrOTw;
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

    iput-object p1, p0, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$rJB1H5L7kveLoM9G-WEeshDrOTw;->f$0:Landroid/car/hardware/radio/CarRadioManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$rJB1H5L7kveLoM9G-WEeshDrOTw;->f$0:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->lambda$setPowerOffTunner$1$CarRadioManager()V

    return-void
.end method
