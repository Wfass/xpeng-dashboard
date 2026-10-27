.class Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;
.super Ljava/lang/Object;
.source "CarControlUtils.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/CarControlUtils;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/CarControlUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/CarControlUtils$1;->this$0:Lcom/xiaopeng/xuiservice/utils/CarControlUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 93
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c28

    if-eq v0, v1, :cond_0

    return-void

    .line 95
    :cond_0
    const-string v0, "CarControlUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headLight onChangeEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->access$100()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CarControlUtils;->access$200()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v0

    .line 106
    :goto_0
    return-void

    .line 104
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 110
    return-void
.end method
