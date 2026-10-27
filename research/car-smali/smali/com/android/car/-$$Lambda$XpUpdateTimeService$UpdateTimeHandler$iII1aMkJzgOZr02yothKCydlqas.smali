.class public final synthetic Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$iII1aMkJzgOZr02yothKCydlqas;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->lambda$handleVhalEvents$0(Landroid/car/hardware/property/CarPropertyEvent;)Z

    move-result p1

    return p1
.end method
