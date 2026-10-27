.class Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;
.super Ljava/lang/Object;
.source "CarCameraSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;


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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

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

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CAMERA:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBevMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_BEV_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCarDrivingSceneNRALevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_CAR_DRIVING_SCENE_NRA_LEVEL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 77
    sget v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    return v0
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

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CAMERA:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_TRANS_BODY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransChassis(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_TRANS_CHASSIS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTurnAssistantSW(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TURN_ASSISTANT_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBevMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_BEV_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putTransBody(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_TRANS_BODY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putTransChassis(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "CAMERA_KEY_TRANS_CHASSIS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putTurnAssistantSW(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "TURN_ASSISTANT_SW"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

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

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CAMERA:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCarDrivingSceneNRALevel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_CAR_DRIVING_SCENE_NRA_LEVEL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

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

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CAMERA:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
