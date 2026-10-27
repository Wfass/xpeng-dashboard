.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;

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

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->lambda$readJSONBObject$11(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
