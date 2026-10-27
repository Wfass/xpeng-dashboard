.class Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;
.super Ljava/lang/Object;
.source "CarDemoSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;


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
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

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

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DEMO:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 158
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

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DEMO:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKEY1(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY1"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKEY2(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY2"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKEY3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY3"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKEY4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY4"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKEY5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY5"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyBool(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_BOOL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyFloat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_FLOAT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_INT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_JSON"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyLong(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_LONG"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_MAP"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_STRING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putKEY1(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY1"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKEY2(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY2"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKEY3(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY3"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKEY4(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY4"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKEY5(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "DEMO_KEY5"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyBool(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_BOOL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyFloat(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_FLOAT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyInt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_INT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyJson(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_JSON"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyLong(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_LONG"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyMap(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_MAP"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_STRING"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

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

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DEMO:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCurrentHabitReloadState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setCurrentHabitReloadState(Z)V

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

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DEMO:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
