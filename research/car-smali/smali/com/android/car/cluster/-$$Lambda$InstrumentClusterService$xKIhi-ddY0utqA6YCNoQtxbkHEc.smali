.class public final synthetic Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;

    invoke-direct {v0}, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;-><init>()V

    sput-object v0, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;->INSTANCE:Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/car/cluster/InstrumentClusterService;->lambda$getOrCreateActivityInfoLocked$0(Ljava/lang/String;)Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    move-result-object p1

    return-object p1
.end method
