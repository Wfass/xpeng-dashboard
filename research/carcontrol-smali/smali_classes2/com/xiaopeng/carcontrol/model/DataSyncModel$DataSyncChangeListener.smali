.class public interface abstract Lcom/xiaopeng/carcontrol/model/DataSyncModel$DataSyncChangeListener;
.super Ljava/lang/Object;
.source "DataSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/model/DataSyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataSyncChangeListener"
.end annotation


# virtual methods
.method public abstract onAccountDataSynced(Lcom/xiaopeng/xvs/xid/sync/api/SyncType;Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "syncType",
            "syncDataFlag"
        }
    .end annotation
.end method
