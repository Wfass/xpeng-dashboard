.class public Lcom/alibaba/sdk/android/httpdns/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/j/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/httpdns/j/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/httpdns/j/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/a;
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "dns"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "dns"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "ttl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ips"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ips"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v9, v8, [Ljava/lang/String;

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_2

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v1

    :cond_2
    const/4 v4, 0x1

    if-ne v6, v4, :cond_3

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-direct {v4, v5, v6, v9, v7}, Lcom/alibaba/sdk/android/httpdns/j/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x1c

    if-ne v6, v4, :cond_4

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-direct {v4, v5, v6, v9, v7}, Lcom/alibaba/sdk/android/httpdns/j/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/alibaba/sdk/android/httpdns/j/a;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/j/a;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;I)Lcom/alibaba/sdk/android/httpdns/j/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
            "I)",
            "Lcom/alibaba/sdk/android/httpdns/j/a;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p1, v4, :cond_2

    :cond_1
    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/alibaba/sdk/android/httpdns/j/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-eq p1, v2, :cond_3

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne p1, v4, :cond_0

    :cond_3
    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/alibaba/sdk/android/httpdns/j/a$a;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/alibaba/sdk/android/httpdns/j/a;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/j/a;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/j/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method
