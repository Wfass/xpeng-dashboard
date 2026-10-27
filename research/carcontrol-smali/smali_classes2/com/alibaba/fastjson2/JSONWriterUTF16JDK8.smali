.class final Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;
.super Lcom/alibaba/fastjson2/JSONWriterUTF16;
.source "JSONWriterUTF16JDK8.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-void
.end method


# virtual methods
.method public writeString(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_1

    .line 17
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->isEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->writeString(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->writeNull()V

    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v1

    .line 27
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    .line 28
    :goto_1
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v3

    .line 29
    array-length v5, v3

    move v6, v1

    .line 32
    :goto_2
    array-length v7, v3

    if-ge v6, v7, :cond_6

    .line 33
    aget-char v7, v3, v6

    .line 34
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->quote:C

    if-eq v7, v8, :cond_7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_7

    if-eqz v0, :cond_4

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_7

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_7

    const/16 v8, 0x29

    if-eq v7, v8, :cond_7

    :cond_4
    if-eqz v2, :cond_5

    const/16 v8, 0x7f

    if-le v7, v8, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    move v4, v1

    :cond_7
    :goto_3
    if-nez v4, :cond_9

    .line 45
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    add-int/2addr p1, v5

    add-int/lit8 p1, p1, 0x2

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->chars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->ensureCapacity(I)V

    .line 50
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->quote:C

    aput-char v2, p1, v0

    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    array-length v2, v3

    invoke-static {v3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->chars:[C

    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->off:I

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->quote:C

    aput-char v1, p1, v0

    return-void

    .line 57
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriterUTF16JDK8;->writeStringEscape(Ljava/lang/String;)V

    return-void
.end method
