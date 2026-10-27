.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplUUID.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 29
    :cond_0
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeUUID(Ljava/util/UUID;)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeUUID(Ljava/util/UUID;)V

    return-void
.end method
