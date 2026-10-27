.class public Lcom/alibaba/fastjson2/util/MapMultiValueType;
.super Ljava/lang/Object;
.source "MapMultiValueType.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# instance fields
.field private final mapType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final valueTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->valueTypes:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    .line 19
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->valueTypes:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    .line 24
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;)Lcom/alibaba/fastjson2/util/MapMultiValueType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/util/MapMultiValueType;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getMapType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->mapType:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MapMultiValueType;->valueTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
