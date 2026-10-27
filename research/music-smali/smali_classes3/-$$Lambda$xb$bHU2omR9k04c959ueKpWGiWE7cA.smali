.class public final synthetic L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;

    invoke-direct {v0}, L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;-><init>()V

    sput-object v0, L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;->INSTANCE:L-$$Lambda$xb$bHU2omR9k04c959ueKpWGiWE7cA;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lxb;->lambda$bHU2omR9k04c959ueKpWGiWE7cA(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
