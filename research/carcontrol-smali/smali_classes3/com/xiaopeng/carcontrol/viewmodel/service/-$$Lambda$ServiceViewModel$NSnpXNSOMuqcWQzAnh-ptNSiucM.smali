.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

.field public final synthetic f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

.field public final synthetic f$2:Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$2:Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$1:Lcom/xiaopeng/xvs/xid/sync/api/SyncType;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$NSnpXNSOMuqcWQzAnh-ptNSiucM;->f$2:Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->lambda$onAccountDataSynced$11$ServiceViewModel(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V

    return-void
.end method
