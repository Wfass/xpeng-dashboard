.class public final synthetic L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;

    invoke-direct {v0}, L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;-><init>()V

    sput-object v0, L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;->INSTANCE:L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;

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

    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
