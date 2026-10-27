.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;
.super Ljava/lang/Object;
.source "SteerControlStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlTask"
.end annotation


# instance fields
.field private final direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field private volatile isRunning:Z

.field private final leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "direction"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning:Z

    .line 181
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object p0
.end method


# virtual methods
.method increase()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    return-void
.end method

.method isLooping()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRunning()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->updateUserControlFlag(Z)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->pendingControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->direction:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->stopControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;)Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning:Z

    return-void
.end method

.method setRunning()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->isRunning:Z

    return-void
.end method

.method stop()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;->leftTime:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
