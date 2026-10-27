.class public final synthetic L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;

    invoke-direct {v0}, L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;-><init>()V

    sput-object v0, L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;->INSTANCE:L-$$Lambda$abf$ogLAZX5yveGyhTTxApK3hVgkWtg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Labf;->lambda$ogLAZX5yveGyhTTxApK3hVgkWtg(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
