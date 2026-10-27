.class public final synthetic L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;

    invoke-direct {v0}, L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;-><init>()V

    sput-object v0, L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;->INSTANCE:L-$$Lambda$yr$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU;

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

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lyr;->lambda$yC3Cmaspi_Jk4EYn5jH7S1Z4lbU(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
