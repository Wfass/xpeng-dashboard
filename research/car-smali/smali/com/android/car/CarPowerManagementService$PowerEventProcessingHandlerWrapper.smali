.class Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerEventProcessingHandlerWrapper"
.end annotation


# instance fields
.field public final handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

.field private mLastDisplayState:I

.field private mPowerOnSent:Z

.field private mProcessingDone:Z

.field private mProcessingTime:J


# direct methods
.method public constructor <init>(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingTime:J

    .line 1159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingDone:Z

    .line 1160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mPowerOnSent:Z

    .line 1161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mLastDisplayState:I

    .line 1164
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    .line 1165
    return-void
.end method


# virtual methods
.method public callOnPowerOn(Z)V
    .locals 3
    .param p1, "displayOn"    # Z

    .line 1185
    move v0, p1

    .line 1186
    .local v0, "newDisplayState":I
    const/4 v1, 0x0

    .line 1187
    .local v1, "shouldCall":Z
    monitor-enter p0

    .line 1188
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mPowerOnSent:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mLastDisplayState:I

    if-eq v2, v0, :cond_1

    .line 1189
    :cond_0
    const/4 v1, 0x1

    .line 1190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mPowerOnSent:Z

    .line 1191
    iput v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mLastDisplayState:I

    .line 1193
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    if-eqz v1, :cond_2

    .line 1195
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    invoke-interface {v2, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;->onPowerOn(Z)V

    .line 1197
    :cond_2
    return-void

    .line 1193
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public callOnPrepareShutdown(Z)J
    .locals 2
    .param p1, "shuttingDown"    # Z

    .line 1200
    monitor-enter p0

    .line 1201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mPowerOnSent:Z

    if-eqz v0, :cond_0

    .line 1202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mPowerOnSent:Z

    .line 1204
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    invoke-interface {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;->onPrepareShutdown(Z)J

    move-result-wide v0

    return-wide v0

    .line 1204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getProcessingTime()J
    .locals 2

    monitor-enter p0

    .line 1173
    :try_start_0
    iget-wide v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    throw v0
.end method

.method public declared-synchronized isProcessingDone()Z
    .locals 1

    monitor-enter p0

    .line 1181
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    throw v0
.end method

.method public declared-synchronized markProcessingDone()V
    .locals 1

    monitor-enter p0

    .line 1177
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    monitor-exit p0

    return-void

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    throw v0
.end method

.method public declared-synchronized setProcessingTimeAndResetProcessingDone(J)V
    .locals 1
    .param p1, "processingTime"    # J

    monitor-enter p0

    .line 1168
    :try_start_0
    iput-wide p1, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingTime:J

    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    monitor-exit p0

    return-void

    .line 1167
    .end local p1    # "processingTime":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerEventProcessingHandlerWrapper [handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->handler:Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcessingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mProcessingDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandlerWrapper;->mProcessingDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
