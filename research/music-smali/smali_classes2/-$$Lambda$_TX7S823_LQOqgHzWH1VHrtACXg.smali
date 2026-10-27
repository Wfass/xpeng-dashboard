.class public final synthetic L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;

    invoke-direct {v0}, L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;-><init>()V

    sput-object v0, L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;->INSTANCE:L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
