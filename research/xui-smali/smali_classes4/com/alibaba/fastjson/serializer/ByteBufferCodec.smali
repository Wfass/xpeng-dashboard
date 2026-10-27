.class public Lcom/alibaba/fastjson/serializer/ByteBufferCodec;
.super Ljava/lang/Object;
.source "ByteBufferCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ByteBufferCodec$ByteBufferBean;
    }
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ByteBufferCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;->instance:Lcom/alibaba/fastjson/serializer/ByteBufferCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 16
    const-class v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec$ByteBufferBean;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec$ByteBufferBean;

    .line 17
    .local v0, "bean":Lcom/alibaba/fastjson/serializer/ByteBufferCodec$ByteBufferBean;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/ByteBufferCodec$ByteBufferBean;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 22
    const/16 v0, 0xe

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
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

    .line 27
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 29
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 31
    .local v1, "array":[B
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 32
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 34
    const-string v3, "array"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    .line 36
    const-string v3, "limit"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/16 v5, 0x2c

    invoke-virtual {v2, v5, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 37
    const-string v3, "position"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v5, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 39
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 40
    return-void
.end method
