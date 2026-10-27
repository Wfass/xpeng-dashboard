.class Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;
.super Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;
.source "JSONExtract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/odps/JSONExtract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtractValueConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/support/odps/JSONExtract;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;-><init>(Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)V
    .locals 5

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 53
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x22

    .line 54
    aput-byte v3, v1, v2

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 55
    aput-byte v3, v1, v0

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 57
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([B)V

    return-void
.end method

.method public accept([BII)V
    .locals 4

    if-lez p2, :cond_1

    add-int v0, p2, p3

    .line 32
    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p2, -0x1

    aget-byte v2, p1, v1

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_1

    .line 35
    aget-byte v0, p1, v0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_1

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p2, p2, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput-object p1, p2, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 38
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput v1, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    .line 39
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    add-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput-object p1, v0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 46
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput p2, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    .line 47
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtract$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtract;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtract;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput p3, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method
