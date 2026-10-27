.class Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;
.super Lcom/android/car/internal/CarRatedFloatListeners;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarPropertyListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/CarRatedFloatListeners<",
        "Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager;F)V
    .locals 0

    .line 1009
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    .line 1010
    invoke-direct {p0, p2}, Lcom/android/car/internal/CarRatedFloatListeners;-><init>(F)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPropertySet$0$CarPropertyManager$CarPropertyListeners(JLandroid/car/hardware/property/CarPropertyEvent;Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 1

    .line 1074
    invoke-virtual {p0, p4}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p0, p4, p1, p2}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->needUpdateForSelectedListener(Ljava/lang/Object;J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-interface {p4, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onSetEvent(Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    .line 1078
    :cond_0
    iget-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p1}, Landroid/car/hardware/property/CarPropertyManager;->access$300(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ignore property data: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 3

    .line 1048
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    .line 1049
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1050
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1051
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    new-instance v0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;

    invoke-direct {v0, p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;-><init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;Landroid/car/hardware/CarPropertyValue;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1051
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 7

    .line 1014
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    .line 1015
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    .line 1016
    invoke-virtual {p0, v2, v0, v1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->needUpdateForAreaId(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, Landroid/car/hardware/property/CarPropertyManager;->access$300(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropping old property data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_0
    invoke-static {}, Landroid/car/builtin/os/BuildHelper;->isUserBuild()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    sub-long/2addr v2, v4

    .line 1023
    invoke-static {}, Landroid/car/hardware/property/CarPropertyManager;->access$400()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 1024
    iget-object v4, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v4}, Landroid/car/hardware/property/CarPropertyManager;->access$300(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1025
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v6

    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v6

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timestamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback cost too much time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_1
    iget-object v2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v2}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1032
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1033
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    new-instance v2, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;

    invoke-direct {v2, p0, v0, v1, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;-><init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLandroid/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v3, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1033
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onPropertySet(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4

    .line 1069
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1070
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1071
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 1073
    new-instance v0, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;

    invoke-direct {v0, p0, v2, v3, p1}, Landroid/car/hardware/property/-$$Lambda$CarPropertyManager$CarPropertyListeners$Z_lph3BbS3B3JJ_8xzRRButRXw8;-><init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLandroid/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1071
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
