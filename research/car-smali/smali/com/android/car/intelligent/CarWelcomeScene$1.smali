.class Lcom/android/car/intelligent/CarWelcomeScene$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarWelcomeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/intelligent/CarWelcomeScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/intelligent/CarWelcomeScene;


# direct methods
.method constructor <init>(Lcom/android/car/intelligent/CarWelcomeScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/intelligent/CarWelcomeScene;

    .line 75
    iput-object p1, p0, Lcom/android/car/intelligent/CarWelcomeScene$1;->this$0:Lcom/android/car/intelligent/CarWelcomeScene;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/car/intelligent/CarWelcomeScene$1;Ljava/util/List;)V
    .locals 3
    .param p1, "events"    # Ljava/util/List;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 80
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    iget-object v2, p0, Lcom/android/car/intelligent/CarWelcomeScene$1;->this$0:Lcom/android/car/intelligent/CarWelcomeScene;

    invoke-static {v2, v1}, Lcom/android/car/intelligent/CarWelcomeScene;->access$100(Lcom/android/car/intelligent/CarWelcomeScene;Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 81
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/intelligent/CarWelcomeScene$1;->this$0:Lcom/android/car/intelligent/CarWelcomeScene;

    invoke-static {v0}, Lcom/android/car/intelligent/CarWelcomeScene;->access$000(Lcom/android/car/intelligent/CarWelcomeScene;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/intelligent/-$$Lambda$CarWelcomeScene$1$Jbi5T4LnXlzl5xm8A-jllBTuxBc;

    invoke-direct {v1, p0, p1}, Lcom/android/car/intelligent/-$$Lambda$CarWelcomeScene$1$Jbi5T4LnXlzl5xm8A-jllBTuxBc;-><init>(Lcom/android/car/intelligent/CarWelcomeScene$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public onShmEvent(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p2, "memoryHeap"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    .local p1, "event":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method
