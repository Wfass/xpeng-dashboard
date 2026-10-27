.class public final synthetic Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;->INSTANCE:Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$91pmYOt2juMUysqNoXrrVVVgnRY;

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

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->lambda$handleVhalEvents$1(Landroid/car/hardware/CarPropertyValue;)Z

    move-result p1

    return p1
.end method
