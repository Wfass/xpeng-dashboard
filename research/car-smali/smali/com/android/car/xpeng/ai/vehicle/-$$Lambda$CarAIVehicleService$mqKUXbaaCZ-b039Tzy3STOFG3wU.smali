.class public final synthetic Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

.field private final synthetic f$1:I

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$0:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    iput p2, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$1:I

    iput p3, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$0:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    iget v1, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$1:I

    iget v2, p0, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->lambda$setFloatPropertyByACMachine$0(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;IF)V

    return-void
.end method
