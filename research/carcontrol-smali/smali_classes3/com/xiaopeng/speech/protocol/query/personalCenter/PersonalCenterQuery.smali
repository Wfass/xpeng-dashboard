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

    return-void
.end method


# virtual methods
.method protected getControlProfileHabitNumSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getControlProfileHabitNumSupport data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PersonalCenterQuery"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "index"

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 36
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getControlProfileHabitNumSupport(I)I

    move-result p1

    return p1
.end method

.method protected getControlProfileHabitSupport(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getControlProfileHabitSupport()I

    move-result p1

    return p1
.end method

.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGuiPageOpenState data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PersonalCenterQuery"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/personalCenter/IPersonalCenterCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
