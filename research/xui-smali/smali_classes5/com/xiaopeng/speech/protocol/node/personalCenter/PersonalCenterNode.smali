.class public Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "PersonalCenterNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method protected onControlProfileHabitSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.profile.habit.select"
    .end annotation

    .line 23
    const-string v0, "PersonalCenterNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    move v1, v0

    .line 26
    .local v1, "number":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "index"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 30
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "CaracNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onControlProfileHabitSelect string data error, data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 33
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 34
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterListener;->onControlProfileHabitSelect(I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlProfileHabitSelectNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.profile.habit.select.next"
    .end annotation

    .line 41
    const-string v0, "PersonalCenterNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 45
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/personalCenter/PersonalCenterListener;->onControlProfileHabitSelectNext()V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
