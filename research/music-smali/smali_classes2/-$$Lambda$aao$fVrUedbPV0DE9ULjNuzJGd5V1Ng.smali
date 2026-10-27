.class public final synthetic L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;

    invoke-direct {v0}, L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;-><init>()V

    sput-object v0, L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;->INSTANCE:L-$$Lambda$aao$fVrUedbPV0DE9ULjNuzJGd5V1Ng;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Laao;->lambda$fVrUedbPV0DE9ULjNuzJGd5V1Ng(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
