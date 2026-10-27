.class public interface abstract Lcom/alibaba/fastjson/serializer/NameFilter;
.super Ljava/lang/Object;
.source "NameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# direct methods
.method public static compose(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;)Lcom/alibaba/fastjson/serializer/NameFilter;
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$5DPMi-R-wTQR0gTHRWaROp6UriI;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$5DPMi-R-wTQR0gTHRWaROp6UriI;-><init>(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;)V

    return-object v0
.end method

.method public static synthetic lambda$compose$1(Lcom/alibaba/fastjson/serializer/NameFilter;Lcom/alibaba/fastjson/serializer/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-interface {p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-interface {p0, p2, p1, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$of$0(Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/NameFilter;
    .locals 1

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$_K8SWDQ-4eF0bPtVJbkt1swjI6k;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/-$$Lambda$NameFilter$_K8SWDQ-4eF0bPtVJbkt1swjI6k;-><init>(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-object v0
.end method
