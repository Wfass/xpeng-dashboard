.class public interface abstract Lcom/alibaba/fastjson2/filter/NameFilter;
.super Ljava/lang/Object;
.source "NameFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/Filter;


# direct methods
.method public static compose(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;-><init>(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)V

    return-object v0
.end method

.method public static synthetic lambda$compose$1(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-interface {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p0, p2, p1, p4}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$of$0(Lcom/alibaba/fastjson2/PropertyNamingStrategy;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$of$2(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$Y3reg3kHf6AV720aostdzM_oyoo;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$Y3reg3kHf6AV720aostdzM_oyoo;-><init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    return-object v0
.end method

.method public static of(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/filter/NameFilter;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$9UIQWSJcf_zQdQT_3HeObf2vDA8;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$9UIQWSJcf_zQdQT_3HeObf2vDA8;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public abstract process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method
