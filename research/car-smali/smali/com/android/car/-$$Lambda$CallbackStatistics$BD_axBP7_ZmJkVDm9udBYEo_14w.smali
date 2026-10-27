.class public final synthetic Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;->INSTANCE:Lcom/android/car/-$$Lambda$CallbackStatistics$BD_axBP7_ZmJkVDm9udBYEo_14w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/android/car/CallbackStatistics;->lambda$BD_axBP7_ZmJkVDm9udBYEo_14w(Ljava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
