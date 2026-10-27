.class final Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;
.super Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameArrayOpSegment"
.end annotation


# instance fields
.field final array:Lcom/alibaba/fastjson2/JSONArray;

.field final operator:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;Lcom/alibaba/fastjson2/JSONArray;)V
    .locals 0

    .line 776
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 777
    iput-object p7, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;->operator:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 778
    iput-object p8, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;->array:Lcom/alibaba/fastjson2/JSONArray;

    return-void
.end method


# virtual methods
.method apply(Ljava/lang/Object;)Z
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;->operator:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v0, v1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;->array:Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 786
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support operator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;->operator:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
