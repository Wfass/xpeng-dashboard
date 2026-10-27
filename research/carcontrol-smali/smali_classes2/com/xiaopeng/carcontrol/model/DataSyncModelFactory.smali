.class Lcom/xiaopeng/carcontrol/model/DataSyncModelFactory;
.super Ljava/lang/Object;
.source "DataSyncModelFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createInstance()Lcom/xiaopeng/carcontrol/model/DataSyncModel;
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;-><init>()V

    return-object v0
.end method
