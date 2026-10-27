.class public final synthetic L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;

    invoke-direct {v0}, L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;-><init>()V

    sput-object v0, L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;->INSTANCE:L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;

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

    invoke-static {p1}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
