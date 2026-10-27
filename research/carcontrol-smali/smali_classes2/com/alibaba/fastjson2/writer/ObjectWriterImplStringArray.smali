.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplStringArray.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

.field static final JSONB_TYPE_HASH:J

.field static final TYPE_NAME_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[String"

    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->TYPE_NAME_BYTES:[B

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->JSONB_TYPE_HASH:J

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 23
    :cond_0
    check-cast p2, [Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([Ljava/lang/String;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 35
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->TYPE_NAME_BYTES:[B

    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->JSONB_TYPE_HASH:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 38
    :cond_1
    check-cast p2, [Ljava/lang/String;

    .line 40
    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p3, 0x0

    .line 41
    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_4

    .line 42
    aget-object p4, p2, p3

    if-nez p4, :cond_3

    .line 44
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p4, v0

    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, ""

    .line 45
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
