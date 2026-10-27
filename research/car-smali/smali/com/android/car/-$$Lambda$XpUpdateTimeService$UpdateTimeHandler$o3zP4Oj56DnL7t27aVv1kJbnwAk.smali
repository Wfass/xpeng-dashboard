.class public final synthetic Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$o3zP4Oj56DnL7t27aVv1kJbnwAk;

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

    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->lambda$o3zP4Oj56DnL7t27aVv1kJbnwAk(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    return-object p1
.end method
