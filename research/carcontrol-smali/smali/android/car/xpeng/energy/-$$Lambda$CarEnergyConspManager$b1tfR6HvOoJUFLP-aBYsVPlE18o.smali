.class public final synthetic Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/energy/CarEnergyConspManager;

.field public final synthetic f$1:Landroid/car/xpeng/energy/CarEnergyConspEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/energy/CarEnergyConspManager;Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;->f$0:Landroid/car/xpeng/energy/CarEnergyConspManager;

    iput-object p2, p0, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;->f$1:Landroid/car/xpeng/energy/CarEnergyConspEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;->f$0:Landroid/car/xpeng/energy/CarEnergyConspManager;

    iget-object v1, p0, Landroid/car/xpeng/energy/-$$Lambda$CarEnergyConspManager$b1tfR6HvOoJUFLP-aBYsVPlE18o;->f$1:Landroid/car/xpeng/energy/CarEnergyConspEvent;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/energy/CarEnergyConspManager;->lambda$handleCarEnergyConspEventChanged$0$CarEnergyConspManager(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    return-void
.end method
