.class final Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;
.super Ljava/lang/Object;
.source "ObjectWriterBigInteger.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;


# instance fields
.field final features:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;-><init>(J)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;->features:J

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 33
    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;J)V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 24
    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;J)V

    return-void
.end method
