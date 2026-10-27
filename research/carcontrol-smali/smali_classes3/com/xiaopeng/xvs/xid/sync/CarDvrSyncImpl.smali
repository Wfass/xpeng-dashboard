.class Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;
.super Ljava/lang/Object;
.source "CarDvrSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;


# instance fields
.field mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DVR:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    return v0
.end method

.method public getDvrBtSt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DVR_KEY_DVR_BT_ST"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDvrType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DVR_KEY_DVR_TYPE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeneral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DVR:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putDvrBtSt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DVR_KEY_DVR_BT_ST"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putDvrType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DVR_KEY_DVR_TYPE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DVR:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DVR:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
