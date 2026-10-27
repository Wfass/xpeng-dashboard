.class public final synthetic Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/ValueFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$rQvEgBOa2-EhHj42vEHpWDkV2hs;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/ValueFilter;->lambda$of$3(Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
