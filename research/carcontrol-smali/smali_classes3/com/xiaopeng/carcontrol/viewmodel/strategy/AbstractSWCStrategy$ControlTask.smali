.class final Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;
.super Ljava/lang/Object;
.source "AbstractSWCStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControlTask"
.end annotation


# instance fields
.field private volatile isRunning:Z

.field private final mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

.field private mLastSession:I

.field private mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V
    .locals 0
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

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning:Z

    .line 238
    new-instance p1, Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    const/4 p1, -0x1

    .line 239
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mLastSession:I

    .line 242
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->newSession()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    return-object p0
.end method


# virtual methods
.method isRunning()Z
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mLastSession:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newSession()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->increase()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mLastSession:I

    return-void
.end method

.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning:Z

    .line 257
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mLastSession:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->updateUserControlFlag(Z)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->startControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->pendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mLastSession:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->pendingControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->pendingHoldOn(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mDirection:Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->stopControl(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;)V

    :cond_1
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning:Z

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method stop()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->mSessionIndex:Lcom/xiaopeng/carcontrol/lang/SessionIndex;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/SessionIndex;->increase()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlTask{loop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
