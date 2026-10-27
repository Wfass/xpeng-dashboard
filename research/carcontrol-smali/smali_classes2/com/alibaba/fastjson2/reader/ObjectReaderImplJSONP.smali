.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplJSONP;
.super Ljava/lang/Object;
.source "ObjectReaderImplJSONP.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field private final objectClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplJSONP;->objectClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2e

    .line 22
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object p4

    .line 24
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 p4, 0x2a

    const/16 p5, 0x2f

    if-ne p3, p5, :cond_1

    .line 29
    invoke-virtual {p1, p5, p4, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    :cond_1
    const/16 v0, 0x28

    const-string v1, "illegal jsonp input"

    if-ne p3, v0, :cond_5

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 40
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplJSONP;->objectClass:Ljava/lang/Class;

    const-class v0, Lcom/alibaba/fastjson2/JSONObject;

    if-ne p3, v0, :cond_2

    .line 41
    new-instance p3, Lcom/alibaba/fastjson2/JSONPObject;

    invoke-direct {p3, p2}, Lcom/alibaba/fastjson2/JSONPObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/fastjson2/JSONPObject;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONPObject;->setFunction(Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x29

    .line 55
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x3b

    .line 62
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 63
    invoke-virtual {p1, p5, p4, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    return-object p3

    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p2

    .line 59
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONPObject;->addParameter(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 46
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "create jsonp instance error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 35
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
