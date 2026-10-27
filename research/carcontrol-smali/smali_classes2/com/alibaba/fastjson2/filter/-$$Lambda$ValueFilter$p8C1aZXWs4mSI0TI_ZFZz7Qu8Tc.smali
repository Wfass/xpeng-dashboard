.class public final synthetic Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/ValueFilter;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/filter/ValueFilter;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/filter/ValueFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;->f$0:Lcom/alibaba/fastjson2/filter/ValueFilter;

    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;->f$1:Lcom/alibaba/fastjson2/filter/ValueFilter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;->f$0:Lcom/alibaba/fastjson2/filter/ValueFilter;

    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$ValueFilter$p8C1aZXWs4mSI0TI_ZFZz7Qu8Tc;->f$1:Lcom/alibaba/fastjson2/filter/ValueFilter;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/ValueFilter;->lambda$compose$0(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
