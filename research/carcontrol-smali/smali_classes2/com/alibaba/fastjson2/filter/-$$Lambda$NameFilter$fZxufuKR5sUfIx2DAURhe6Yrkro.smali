.class public final synthetic Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/filter/NameFilter;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/filter/NameFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;->f$0:Lcom/alibaba/fastjson2/filter/NameFilter;

    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;->f$1:Lcom/alibaba/fastjson2/filter/NameFilter;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;->f$0:Lcom/alibaba/fastjson2/filter/NameFilter;

    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$fZxufuKR5sUfIx2DAURhe6Yrkro;->f$1:Lcom/alibaba/fastjson2/filter/NameFilter;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/NameFilter;->lambda$compose$1(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
