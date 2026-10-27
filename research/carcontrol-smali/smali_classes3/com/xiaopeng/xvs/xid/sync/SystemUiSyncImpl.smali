.class public Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;
.super Ljava/lang/Object;
.source "SystemUiSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;


# instance fields
.field mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mWrapper"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

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

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SYSTEM_UI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 25
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

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SYSTEM_UI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SYSTEM_UI:Ljava/lang/String;

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

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SYSTEM_UI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
