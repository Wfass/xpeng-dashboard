.class public Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;
.super Lcom/aliyun/odps/udf/UDF;
.source "JSONExtractScalar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;
    }
.end annotation


# static fields
.field static final BYTES_FALSE:[B

.field static final BYTES_NULL:[B

.field static final BYTES_TRUE:[B


# instance fields
.field final path:Lcom/alibaba/fastjson2/JSONPath;

.field text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

.field valueConsumer:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_TRUE:[B

    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_FALSE:[B

    .line 20
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_NULL:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/aliyun/odps/udf/UDF;-><init>()V

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;-><init>(Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->valueConsumer:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;

    .line 28
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->path:Lcom/alibaba/fastjson2/JSONPath;

    return-void
.end method


# virtual methods
.method public eval(Lcom/aliyun/odps/io/Text;)Lcom/aliyun/odps/io/Writable;
    .locals 3

    .line 32
    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getBytes()[B

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getLength()I

    move-result p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->path:Lcom/alibaba/fastjson2/JSONPath;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->valueConsumer:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONPath;->extractScalar(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V

    .line 38
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    return-object p1
.end method
