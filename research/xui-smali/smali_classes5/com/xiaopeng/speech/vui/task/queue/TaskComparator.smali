.class public Lcom/xiaopeng/speech/vui/task/queue/TaskComparator;
.super Ljava/lang/Object;
.source "TaskComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/speech/vui/task/base/BaseTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskComparator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Lcom/xiaopeng/speech/vui/task/base/BaseTask;)I
    .locals 4
    .param p1, "currentTask"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;
    .param p2, "queueTask"    # Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    .line 18
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 21
    :cond_0
    const-string v1, "TaskComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparator: activeScene:  --  currentTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- queueTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->hasPopPanel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    const-string v1, "TaskComparator"

    const-string v2, "compare: activeScene is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string v1, "TaskComparator"

    const-string v2, "compare: currentTask == queueTask"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v0

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string v0, "TaskComparator"

    const-string v1, "compare: currentTask is activeScene"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, -0x1

    return v0

    .line 40
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    const-string v0, "TaskComparator"

    const-string v1, "compare: queueTask is activeScene"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_4
    return v0

    .line 19
    :cond_5
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    check-cast p2, Lcom/xiaopeng/speech/vui/task/base/BaseTask;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/queue/TaskComparator;->compare(Lcom/xiaopeng/speech/vui/task/base/BaseTask;Lcom/xiaopeng/speech/vui/task/base/BaseTask;)I

    move-result p1

    return p1
.end method
