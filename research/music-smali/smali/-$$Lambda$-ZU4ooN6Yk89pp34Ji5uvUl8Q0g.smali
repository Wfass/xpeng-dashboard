.class public final synthetic L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;

    invoke-direct {v0}, L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;-><init>()V

    sput-object v0, L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;->INSTANCE:L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;

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

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    check-cast p1, [J

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
