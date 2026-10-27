.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplInt16ValueArray.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field private final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    const-string v0, "[S"

    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_HASH:J

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "[S>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 49
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    .line 50
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [S

    goto :goto_0

    .line 52
    :cond_1
    check-cast p2, [S

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p3, 0x0

    .line 56
    :goto_1
    array-length p4, p2

    if-ge p3, p4, :cond_3

    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 60
    :cond_2
    aget-short p4, p2, p3

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 24
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 25
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_HASH:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 29
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Ljava/util/function/Function;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 30
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [S

    goto :goto_0

    .line 32
    :cond_1
    check-cast p2, [S

    .line 35
    :goto_0
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p3, 0x0

    .line 36
    :goto_1
    array-length p4, p2

    if-ge p3, p4, :cond_2

    .line 37
    aget-short p4, p2, p3

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
