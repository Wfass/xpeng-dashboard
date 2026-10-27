.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;
.super Ljava/lang/Object;
.source "MirrorMemoryStrategy.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGearChanged---->isWaitingExitRGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    .line 77
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorMemoryStrategy"

    const/4 v2, 0x0

    .line 76
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$002(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;Z)Z

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$002(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;Z)Z

    .line 85
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->access$102(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;I)I

    return-void
.end method
