.class public final synthetic Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/intelligent/CarIntelligentEngineManager;

.field public final synthetic f$1:Landroid/car/intelligent/CarSceneEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;->f$0:Landroid/car/intelligent/CarIntelligentEngineManager;

    iput-object p2, p0, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;->f$1:Landroid/car/intelligent/CarSceneEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;->f$0:Landroid/car/intelligent/CarIntelligentEngineManager;

    iget-object v1, p0, Landroid/car/intelligent/-$$Lambda$CarIntelligentEngineManager$0kol8shHJA8pxpiWpykwoKR6K6M;->f$1:Landroid/car/intelligent/CarSceneEvent;

    invoke-virtual {v0, v1}, Landroid/car/intelligent/CarIntelligentEngineManager;->lambda$handleWelcomeSceneChanged$1$CarIntelligentEngineManager(Landroid/car/intelligent/CarSceneEvent;)V

    return-void
.end method
