.class public final synthetic L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;

    invoke-direct {v0}, L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;-><init>()V

    sput-object v0, L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;->INSTANCE:L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    check-cast p1, [I

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>([I)V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
