.class public final synthetic Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/model/DataSyncModel;JLcom/xiaopeng/xvs/xid/sync/api/SyncType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$0:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$1:J

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$2:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$0:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$1:J

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/model/-$$Lambda$DataSyncModel$wPli4kMQFsByoya60djamPS6g-Q;->f$2:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->lambda$OnSyncChanged$0$DataSyncModel(JLcom/xiaopeng/xvs/xid/sync/api/SyncType;)V

    return-void
.end method
