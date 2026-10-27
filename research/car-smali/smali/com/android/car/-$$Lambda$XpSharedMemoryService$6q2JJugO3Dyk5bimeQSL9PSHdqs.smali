.class public final synthetic Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;->INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$6q2JJugO3Dyk5bimeQSL9PSHdqs;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/car/XpSharedMemoryService;->lambda$dump$3(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
