.class public abstract Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseMusicLogic;
.source "BaseBizMusicLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<In:",
        "Ljava/lang/Object;",
        "Out:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/logic/BaseMusicLogic;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseBizMusicLogic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCommonFailResp(ILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(ZILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 100
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(ZILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method

.method protected buildParamsFailResp()Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 91
    sget-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->b:Lcom/xiaopeng/musicradio/logic/a$b;

    iget v0, v0, Lcom/xiaopeng/musicradio/logic/a$b;->a:I

    sget-object v1, Lcom/xiaopeng/musicradio/logic/a$a;->b:Lcom/xiaopeng/musicradio/logic/a$b;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/logic/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildCommonFailResp(ILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method

.method protected buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOut;)",
            "Lcom/xiaopeng/aicabin/DataResp;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/aicabin/DataResp;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected callbackDataError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->c:Lcom/xiaopeng/musicradio/logic/a$b;

    iget v0, v0, Lcom/xiaopeng/musicradio/logic/a$b;->a:I

    sget-object v1, Lcom/xiaopeng/musicradio/logic/a$a;->c:Lcom/xiaopeng/musicradio/logic/a$b;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/logic/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method protected callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildCommonFailResp(ILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_0
    return-void
.end method

.method protected callbackParamsError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 2

    .line 120
    sget-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->b:Lcom/xiaopeng/musicradio/logic/a$b;

    iget v0, v0, Lcom/xiaopeng/musicradio/logic/a$b;->a:I

    sget-object v1, Lcom/xiaopeng/musicradio/logic/a$a;->b:Lcom/xiaopeng/musicradio/logic/a$b;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/logic/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method protected callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/aicabin/logic/ILogicCallback;",
            "TOut;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_0
    return-void
.end method

.method protected doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;",
            "Lcom/xiaopeng/aicabin/logic/ILogicCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)",
            "Lcom/xiaopeng/aicabin/DataResp;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method public exeAsync(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->getParams(Lcom/xiaopeng/aicabin/DataReq;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->callbackParamsError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

.method public exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->getParams(Lcom/xiaopeng/aicabin/DataReq;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->buildParamsFailResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected getParams(Lcom/xiaopeng/aicabin/DataReq;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/aicabin/DataReq;",
            ")TIn;"
        }
    .end annotation

    const-string v0, "BaseBizMusicLogic"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "params"

    .line 55
    invoke-virtual {p1, v2}, Lcom/xiaopeng/aicabin/DataReq;->getVal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 59
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 61
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 62
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 63
    check-cast v2, Ljava/lang/Class;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clz: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "getParams error: "

    .line 71
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method
