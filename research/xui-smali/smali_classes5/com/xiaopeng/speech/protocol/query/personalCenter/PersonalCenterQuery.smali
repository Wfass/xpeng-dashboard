.class public Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "PersonalCenterQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method protected getControlProfileHabitNumSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.profile.habit.num.support"
    .end annotation

    .line 28
    const-string v0, "PersonalCenterQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getControlProfileHabitNumSupport data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "number":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "index"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 35
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getControlProfileHabitNumSupport(I)I

    move-result v1

    return v1
.end method

.method protected getControlProfileHabitSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "control.profile.habit.support"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getControlProfileHabitSupport()I

    move-result v0

    return v0
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.status.personal.center"
    .end annotation

    .line 41
    const-string v0, "PersonalCenterQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGuiPageOpenState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
