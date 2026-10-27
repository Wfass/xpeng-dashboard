.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplAtomicLong.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;

    const-string v0, "AtomicLong"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->JSONB_TYPE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->defineClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 43
    :cond_0
    check-cast p2, Ljava/lang/Number;

    .line 44
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 27
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->JSONB_TYPE_NAME_BYTES:[B

    const-wide p4, -0x16176b52da9e7fc2L    # -1.505228865156308E202

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide p2

    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method
