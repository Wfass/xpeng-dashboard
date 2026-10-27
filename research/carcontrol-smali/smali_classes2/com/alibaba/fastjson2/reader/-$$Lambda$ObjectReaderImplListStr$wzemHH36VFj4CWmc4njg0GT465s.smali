.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;

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

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->lambda$wzemHH36VFj4CWmc4njg0GT465s(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
