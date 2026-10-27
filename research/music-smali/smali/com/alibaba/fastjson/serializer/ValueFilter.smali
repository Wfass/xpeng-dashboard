.class public interface abstract Lcom/alibaba/fastjson/serializer/ValueFilter;
.super Ljava/lang/Object;
.source "ValueFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;
.implements Lqw;


# direct methods
.method public static compose(Lcom/alibaba/fastjson/serializer/ValueFilter;Lcom/alibaba/fastjson/serializer/ValueFilter;)Lcom/alibaba/fastjson/serializer/ValueFilter;
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$QDnj-bfjLiwK1yskb-n-BHFWHXg;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$QDnj-bfjLiwK1yskb-n-BHFWHXg;-><init>(Lcom/alibaba/fastjson/serializer/ValueFilter;Lcom/alibaba/fastjson/serializer/ValueFilter;)V

    return-object v0
.end method

.method public static synthetic lambda$compose$0(Lcom/alibaba/fastjson/serializer/ValueFilter;Lcom/alibaba/fastjson/serializer/ValueFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-interface {p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-interface {p0, p2, p3, p1}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
