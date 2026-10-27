.class Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;
.super Ljava/lang/Object;
.source "GuavaSupport.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/GuavaSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsMapWriter"
.end annotation


# instance fields
.field final asMap:Ljava/util/function/Function;

.field final objectClass:Ljava/lang/Class;

.field final typeName:Ljava/lang/String;

.field final typeNameHash:J

.field protected typeNameJSONB:[B


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->objectClass:Ljava/lang/Class;

    .line 178
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeName:Ljava/lang/String;

    .line 179
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeNameHash:J

    :try_start_0
    const-string v0, "asMap"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 181
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->asMap:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "create Guava AsMapWriter error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 190
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->asMap:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 191
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 196
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 197
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeNameJSONB:[B

    if-nez p3, :cond_0

    .line 198
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeName:Ljava/lang/String;

    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeNameJSONB:[B

    .line 200
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeNameJSONB:[B

    iget-wide p4, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->typeNameHash:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 203
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/GuavaSupport$AsMapWriter;->asMap:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 204
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    return-void
.end method
