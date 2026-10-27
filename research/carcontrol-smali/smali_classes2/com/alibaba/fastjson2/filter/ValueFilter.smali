.class public interface abstract Lcom/alibaba/fastjson2/filter/ValueFilter;
.super Ljava/lang/Object;
.source "ValueFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/Filter;


# direct methods
.method public static compose(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;-><init>(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    return-object v0
.end method

.method public static synthetic lambda$compose$0(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-interface {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-interface {p0, p2, p3, p1}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$of$1(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 23
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public static synthetic lambda$of$2(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 30
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    .line 31
    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p4

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$of$3(Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 42
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method public static of(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$Aur55yg-l8xAJw-X-XysI9CtZ-E;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$Aur55yg-l8xAJw-X-XysI9CtZ-E;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$cGLKsXCBMBSS9aR6YSvO2pejqb4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$cGLKsXCBMBSS9aR6YSvO2pejqb4;-><init>(Ljava/lang/String;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static of(Ljava/util/function/Predicate;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function;",
            ")",
            "Lcom/alibaba/fastjson2/filter/ValueFilter;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
