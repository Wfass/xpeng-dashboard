.class public Lcom/alibaba/fastjson/support/spring/GenericFastJsonRedisSerializer;
.super Ljava/lang/Object;
.source "GenericFastJsonRedisSerializer.java"

# interfaces
.implements Lorg/springframework/data/redis/serializer/RedisSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/data/redis/serializer/RedisSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field contextFilter:Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/GenericFastJsonRedisSerializer;->contextFilter:Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/GenericFastJsonRedisSerializer;->contextFilter:Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_1

    .line 46
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/GenericFastJsonRedisSerializer;->contextFilter:Lcom/alibaba/fastjson/serializer/ContextAutoTypeBeforeHandler;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Lorg/springframework/data/redis/serializer/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not deserialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/springframework/data/redis/serializer/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 35
    new-array p1, v0, [B

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 38
    :try_start_0
    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Lorg/springframework/data/redis/serializer/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/springframework/data/redis/serializer/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
