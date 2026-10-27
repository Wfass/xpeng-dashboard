.class public final synthetic Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$9UIQWSJcf_zQdQT_3HeObf2vDA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$9UIQWSJcf_zQdQT_3HeObf2vDA8;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/-$$Lambda$NameFilter$9UIQWSJcf_zQdQT_3HeObf2vDA8;->f$0:Ljava/util/function/Function;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/NameFilter;->lambda$of$2(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
