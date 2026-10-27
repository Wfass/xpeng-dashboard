.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$QwlwfsAe5ZBeHLEGvjVgwR7-wx4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->lambda$QwlwfsAe5ZBeHLEGvjVgwR7-wx4(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
