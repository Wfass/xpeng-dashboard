.class public Lcom/alibaba/mtl/log/a/d;
.super Ljava/lang/Object;
.source "HostConfigMgr.java"


# static fields
.field private static cb:Lcom/alibaba/mtl/log/a/d;


# instance fields
.field private cc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/log/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private cd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/mtl/log/a/d;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/d;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/a/d;->cb:Lcom/alibaba/mtl/log/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/a/d;->cc:Ljava/util/Map;

    return-void
.end method

.method public static ah()Lcom/alibaba/mtl/log/a/d;
    .locals 1

    .line 19
    sget-object v0, Lcom/alibaba/mtl/log/a/d;->cb:Lcom/alibaba/mtl/log/a/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/log/a/c;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/mtl/log/a/d;->cc:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 9

    .line 28
    const-string v0, "HostConfigMgr"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    if-eqz p1, :cond_3

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    nop

    .line 33
    const-string p1, "content"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    const-string v2, "hosts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    if-eqz v3, :cond_1

    .line 41
    new-instance v5, Lcom/alibaba/mtl/log/a/c;

    invoke-direct {v5}, Lcom/alibaba/mtl/log/a/c;-><init>()V

    .line 42
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/mtl/log/a/c;->V:Ljava/lang/String;

    .line 45
    const-string v3, "host"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/mtl/log/a/c;->U:Ljava/lang/String;

    .line 46
    const-string v3, "eids"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    .line 49
    move v6, v4

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 50
    iget-object v7, v5, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/alibaba/mtl/log/a/d;->cc:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/alibaba/mtl/log/a/c;->V:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    const-string p1, "timestamp"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/log/a/d;->cd:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_2

    .line 63
    :catch_0
    move-exception p1

    .line 67
    :cond_3
    :goto_2
    return-void
.end method
