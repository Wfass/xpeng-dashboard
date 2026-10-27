.class public Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;
.super Lcom/aliyun/odps/udf/UDF;
.source "JSONExtractInt32.java"


# instance fields
.field private final path:Lcom/alibaba/fastjson2/JSONPath;

.field private final result:Lcom/aliyun/odps/io/IntWritable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/aliyun/odps/udf/UDF;-><init>()V

    .line 14
    new-instance v0, Lcom/aliyun/odps/io/IntWritable;

    invoke-direct {v0}, Lcom/aliyun/odps/io/IntWritable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;->result:Lcom/aliyun/odps/io/IntWritable;

    .line 17
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;->path:Lcom/alibaba/fastjson2/JSONPath;

    return-void
.end method


# virtual methods
.method public eval(Lcom/aliyun/odps/io/Text;)Lcom/aliyun/odps/io/IntWritable;
    .locals 3

    .line 21
    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/aliyun/odps/io/Text;->getLength()I

    move-result p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extractInt32Value(Lcom/alibaba/fastjson2/JSONReader;)I

    move-result v0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;->result:Lcom/aliyun/odps/io/IntWritable;

    invoke-virtual {p1, v0}, Lcom/aliyun/odps/io/IntWritable;->set(I)V

    .line 27
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractInt32;->result:Lcom/aliyun/odps/io/IntWritable;

    return-object p1
.end method
