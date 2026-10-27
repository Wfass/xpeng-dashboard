.class public final synthetic Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;

    invoke-direct {v0}, Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;-><init>()V

    sput-object v0, Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;->INSTANCE:Landroid/car/hardware/-$$Lambda$CarEcuManager$yBbCr_QU2X9gSJkwty5YNHKDRAI;

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

    invoke-static {p1}, Landroid/car/hardware/CarEcuManager;->lambda$handleOnChangeEvent$0(Ljava/lang/Integer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    return-object p1
.end method
