.class public final synthetic Lcom/android/car/intelligent/-$$Lambda$F7hKz-VxmizAh8hplg7B7iOZlVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListener;


# instance fields
.field private final synthetic f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/intelligent/CarIntelligentEngineService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/intelligent/-$$Lambda$F7hKz-VxmizAh8hplg7B7iOZlVs;->f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    return-void
.end method


# virtual methods
.method public final onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/intelligent/-$$Lambda$F7hKz-VxmizAh8hplg7B7iOZlVs;->f$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    invoke-virtual {v0, p1}, Lcom/android/car/intelligent/CarIntelligentEngineService;->dispatchEventToCarDrivingSceneClients(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method
