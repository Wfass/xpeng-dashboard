.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$x-YGPje38LmstTuieg8HtbrFY4M;

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

    check-cast p1, Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->lambda$x-YGPje38LmstTuieg8HtbrFY4M(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
