.class public Lcom/alibaba/fastjson2/support/odps/JSONWritable;
.super Ljava/lang/Object;
.source "JSONWritable.java"

# interfaces
.implements Lcom/aliyun/odps/io/Writable;


# static fields
.field private static final EMPTY_BYTES:[B


# instance fields
.field bytes:[B

.field length:I

.field off:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 13
    sput-object v0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    .line 26
    array-length p1, p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method


# virtual methods
.method public readFields(Ljava/io/DataInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/aliyun/odps/io/WritableUtils;->readVInt(Ljava/io/DataInput;)I

    move-result v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->setCapacity(IZ)V

    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    invoke-interface {p1, v2, v1, v0}, Ljava/io/DataInput;->readFully([BII)V

    .line 40
    iput v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    .line 55
    array-length p1, p1

    iput p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method public set([B)V
    .locals 2

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->set([BII)V

    return-void
.end method

.method public set([BII)V
    .locals 2

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->setCapacity(IZ)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput p3, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    return-void
.end method

.method setCapacity(IZ)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_2

    .line 45
    :cond_0
    new-array p1, p1, [B

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 47
    iget p2, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 70
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    iget v3, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    invoke-static {p1, v0}, Lcom/aliyun/odps/io/WritableUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->off:I

    iget v2, p0, Lcom/alibaba/fastjson2/support/odps/JSONWritable;->length:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method
