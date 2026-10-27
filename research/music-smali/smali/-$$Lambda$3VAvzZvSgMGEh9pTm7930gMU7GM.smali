.class public final synthetic L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;

    invoke-direct {v0}, L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;-><init>()V

    sput-object v0, L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;->INSTANCE:L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
