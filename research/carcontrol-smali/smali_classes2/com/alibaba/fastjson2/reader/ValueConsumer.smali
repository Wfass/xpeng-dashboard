.class public interface abstract Lcom/alibaba/fastjson2/reader/ValueConsumer;
.super Ljava/lang/Object;
.source "ValueConsumer.java"


# virtual methods
.method public accept(I)V
    .locals 0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/Number;)V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/Number;)V

    return-void
.end method

.method public accept(Ljava/lang/Number;)V
    .locals 0

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public accept(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public accept(Z)V
    .locals 0

    return-void
.end method

.method public accept([BII)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p0, v0}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public acceptNull()V
    .locals 0

    return-void
.end method
