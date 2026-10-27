.class public final synthetic Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;

    invoke-direct {v0}, Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;-><init>()V

    sput-object v0, Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;->INSTANCE:Landroid/car/hardware/shm/-$$Lambda$CarSharedMemoryManager$DcMO4ufcSC7pXtnqjxhBSOWZYTA;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->lambda$logCallbackCount$0(Ljava/lang/Integer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    return-object p1
.end method
