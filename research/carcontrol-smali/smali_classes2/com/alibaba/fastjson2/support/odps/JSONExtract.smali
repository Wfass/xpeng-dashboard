.class public Lcom/alibaba/fastjson2/support/odps/JSONExtract;
.super Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;
.source "JSONExtract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;-><init>(Lcom/alibaba/fastjson2/support/odps/JSONExtract;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->valueConsumer:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;

    return-void
.end method


# virtual methods
.method public eval(Lcom/aliyun/odps/io/Text;)Lcom/aliyun/odps/io/Writable;
    .locals 3

    .line 17
    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getBytes()[B

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getLength()I

    move-result p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->path:Lcom/alibaba/fastjson2/JSONPath;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->valueConsumer:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V

    .line 23
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    return-object p1
.end method
