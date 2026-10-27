.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMap$so52ntfiUt2W36ptSNfrspYimdo;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->lambda$so52ntfiUt2W36ptSNfrspYimdo(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
