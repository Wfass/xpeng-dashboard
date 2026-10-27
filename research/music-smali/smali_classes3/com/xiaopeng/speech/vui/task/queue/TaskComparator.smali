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

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparator: activeScene:  --  currentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- queueTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskComparator"

    .line 21
    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->hasPopPanel()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "compare: activeScene is null"

    .line 25
    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "compare: currentTask == queueTask"

    .line 30
    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "compare: currentTask is activeScene"

    .line 36
    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 40
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "compare: queueTask is activeScene"

    .line 41
    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
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
