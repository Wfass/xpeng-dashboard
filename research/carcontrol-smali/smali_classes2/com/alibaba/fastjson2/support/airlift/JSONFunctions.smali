.class public Lcom/alibaba/fastjson2/support/airlift/JSONFunctions;
.super Ljava/lang/Object;
.source "JSONFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonExtract(Lio/airlift/slice/Slice;Lcom/alibaba/fastjson2/JSONPath;)Lio/airlift/slice/Slice;
    .locals 2

    .line 9
    invoke-virtual {p0}, Lio/airlift/slice/Slice;->byteArray()[B

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/airlift/slice/Slice;->byteArrayOffset()I

    move-result v1

    .line 11
    invoke-virtual {p0}, Lio/airlift/slice/Slice;->length()I

    move-result p0

    .line 12
    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->of([BII)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 13
    new-instance v0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;-><init>()V

    .line 14
    invoke-virtual {p1, p0, v0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V

    .line 15
    iget-object p0, v0, Lcom/alibaba/fastjson2/support/airlift/SliceValueConsumer;->slice:Lio/airlift/slice/Slice;

    return-object p0
.end method
