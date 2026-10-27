.class Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;
.super Ljava/lang/Object;
.source "JSONExtractScalar.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ValueConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtractValueConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    if-gez p1, :cond_0

    neg-int v0, p1

    .line 62
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->setCapacity(IZ)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 65
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput v0, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method public accept(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    neg-long v0, p1

    .line 71
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->setCapacity(IZ)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iget-object v1, v1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 74
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(JI[B)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput v0, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method public accept(Ljava/lang/Number;)V
    .locals 2

    .line 80
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->accept(I)V

    return-void

    .line 85
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->accept(J)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONBytes(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([B)V

    return-void
.end method

.method public accept(Ljava/util/Map;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONBytes(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([B)V

    return-void
.end method

.method public accept(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_TRUE:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_FALSE:[B

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([B)V

    return-void
.end method

.method public accept([BII)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput-object p1, v0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 46
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput p2, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    .line 47
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object p1, p1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    iput p3, p1, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method public acceptNull()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar$ExtractValueConsumer;->this$0:Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;

    iget-object v0, v0, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->text:Lcom/alibaba/fastjson2/support/odps/JSONWritable;

    sget-object v1, Lcom/alibaba/fastjson2/support/odps/JSONExtractScalar;->BYTES_NULL:[B

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([B)V

    return-void
.end method
