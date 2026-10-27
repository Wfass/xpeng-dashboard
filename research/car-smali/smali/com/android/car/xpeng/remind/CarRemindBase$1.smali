.class Lcom/android/car/xpeng/remind/CarRemindBase$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarRemindBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/remind/CarRemindBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/remind/CarRemindBase;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/remind/CarRemindBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/remind/CarRemindBase;

    .line 33
    iput-object p1, p0, Lcom/android/car/xpeng/remind/CarRemindBase$1;->this$0:Lcom/android/car/xpeng/remind/CarRemindBase;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/car/xpeng/remind/CarRemindBase$1;Ljava/util/List;)V
    .locals 6
    .param p1, "events"    # Ljava/util/List;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 38
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindBase$1;->this$0:Lcom/android/car/xpeng/remind/CarRemindBase;

    invoke-virtual {v2, v1}, Lcom/android/car/xpeng/remind/CarRemindBase;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarRemindBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePropertyEvent error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 47
    :cond_1
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

    .line 36
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindBase$1;->this$0:Lcom/android/car/xpeng/remind/CarRemindBase;

    iget-object v0, v0, Lcom/android/car/xpeng/remind/CarRemindBase;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/xpeng/remind/-$$Lambda$CarRemindBase$1$nw_l4cU7bt68A4e4k3dWmuWTF9M;

    invoke-direct {v1, p0, p1}, Lcom/android/car/xpeng/remind/-$$Lambda$CarRemindBase$1$nw_l4cU7bt68A4e4k3dWmuWTF9M;-><init>(Lcom/android/car/xpeng/remind/CarRemindBase$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public onShmEvent(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p2, "fileDescriptor"    # Ljava/io/FileDescriptor;
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

    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method
