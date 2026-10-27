.class Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;
.super Ljava/lang/Object;
.source "AiAssistantSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;


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
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

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

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 507
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

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene10002(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE10002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1013(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1013"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1021(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1021"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1023(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1023"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1029(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1029"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1030(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1030"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene11007(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE11007"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene11008(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE11008"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene14204(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE14204"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene14210(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE14210"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1500(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1500"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1527(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1527"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene1999(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2002(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2003(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2003"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene21101(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21101"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene21104(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21104"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene21105(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21105"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene21106(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21106"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene22001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE22001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2501(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2501"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2504(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2504"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2505(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2505"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene2513(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2513"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene26001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE26001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene26010(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE26010"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene27001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE27001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene35001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene35004(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35004"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene35006(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35006"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene5001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene5006(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5006"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene5007(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5007"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene5009(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5009"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene8001(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene8002(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene8003(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8003"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene9004(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE9004"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene999999(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE999999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScene9999999(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE9999999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScenes(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putScene10002(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE10002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1002(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1013(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1013"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1021(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1021"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1023(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1023"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1029(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1029"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1030(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1030"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene11007(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE11007"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene11008(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE11008"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene14204(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE14204"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene14210(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE14210"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1500(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1500"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1527(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1527"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene1999(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE1999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2002(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2003(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2003"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene21101(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21101"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene21104(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21104"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene21105(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21105"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene21106(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE21106"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene22001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE22001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2501(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2501"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2504(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2504"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2505(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2505"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene2513(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE2513"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene26001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE26001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene26010(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE26010"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene27001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE27001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene35001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene35004(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35004"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene35006(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE35006"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene5001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene5006(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5006"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene5007(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5007"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene5009(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE5009"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene8001(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8001"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene8002(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8002"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene8003(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE8003"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene9004(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE9004"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene999999(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE999999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScene9999999(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE9999999"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScenes(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putScenes(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_SETTING_SCENE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v5, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

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

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

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

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
