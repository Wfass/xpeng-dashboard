.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$vb-khQN9NeejI5FE_JUooPnpCa0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$vb-khQN9NeejI5FE_JUooPnpCa0;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderProvider$vb-khQN9NeejI5FE_JUooPnpCa0;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->lambda$createObjectCreator$3(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
