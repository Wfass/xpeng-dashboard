.class public final synthetic Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$iLtIcid46aqciJliOwjgf-djjJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ValueFilter;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson/serializer/ValueFilter;

.field public final synthetic f$1:Lcom/alibaba/fastjson/serializer/ValueFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson/serializer/ValueFilter;Lcom/alibaba/fastjson/serializer/ValueFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$iLtIcid46aqciJliOwjgf-djjJE;->f$0:Lcom/alibaba/fastjson/serializer/ValueFilter;

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$iLtIcid46aqciJliOwjgf-djjJE;->f$1:Lcom/alibaba/fastjson/serializer/ValueFilter;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$iLtIcid46aqciJliOwjgf-djjJE;->f$0:Lcom/alibaba/fastjson/serializer/ValueFilter;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/-$$Lambda$ValueFilter$iLtIcid46aqciJliOwjgf-djjJE;->f$1:Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->lambda$compose$0(Lcom/alibaba/fastjson/serializer/ValueFilter;Lcom/alibaba/fastjson/serializer/ValueFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
