.class public final synthetic Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

.field private final synthetic f$1:Landroid/car/intelligent/ICarDrivingSceneListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;->f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    iput-object p2, p0, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;->f$1:Landroid/car/intelligent/ICarDrivingSceneListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;->f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    iget-object v1, p0, Lcom/android/car/intelligent/-$$Lambda$CarIntelligentEngineService$oci2DrxIR_vv_tq9tnhCecRbVkU;->f$1:Landroid/car/intelligent/ICarDrivingSceneListener;

    invoke-static {v0, v1}, Lcom/android/car/intelligent/CarIntelligentEngineService;->lambda$registerCarDrivingSceneListener$0(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V

    return-void
.end method
