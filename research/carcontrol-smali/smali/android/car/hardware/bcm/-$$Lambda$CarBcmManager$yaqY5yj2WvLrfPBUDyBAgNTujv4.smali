.class public final synthetic Landroid/car/hardware/bcm/-$$Lambda$CarBcmManager$yaqY5yj2WvLrfPBUDyBAgNTujv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/hardware/bcm/CarBcmManager;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/bcm/CarBcmManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/bcm/-$$Lambda$CarBcmManager$yaqY5yj2WvLrfPBUDyBAgNTujv4;->f$0:Landroid/car/hardware/bcm/CarBcmManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/hardware/bcm/-$$Lambda$CarBcmManager$yaqY5yj2WvLrfPBUDyBAgNTujv4;->f$0:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->lambda$setBcmCpdAlarmHornOnceReq$0$CarBcmManager()V

    return-void
.end method
