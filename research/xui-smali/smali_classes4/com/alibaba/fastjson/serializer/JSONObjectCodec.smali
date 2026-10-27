.class public Lcom/alibaba/fastjson/serializer/JSONObjectCodec;
.super Ljava/lang/Object;
.source "JSONObjectCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/JSONObjectCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONObjectCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/JSONObjectCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/JSONObjectCodec;->instance:Lcom/alibaba/fastjson/serializer/JSONObjectCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 15
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    sget-object v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 18
    .local v1, "mapSerializer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "map"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v7, v2

    .line 19
    .local v7, "mapField":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 23
    :cond_0
    invoke-virtual {v7, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    .local v3, "map":Ljava/lang/Object;
    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v3    # "map":Ljava/lang/Object;
    .end local v7    # "mapField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 29
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
