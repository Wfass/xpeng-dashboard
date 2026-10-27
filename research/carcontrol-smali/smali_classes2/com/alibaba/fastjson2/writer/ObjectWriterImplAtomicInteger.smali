.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplAtomicInteger.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    const-string v0, "AtomicInteger"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->JSONB_TYPE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->defineClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 43
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

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
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 30
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->JSONB_TYPE_NAME_BYTES:[B

    const-wide p4, 0x6925ac96039ae7baL    # 3.24033204513211E198

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method
