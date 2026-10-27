.class public final synthetic L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;

    invoke-direct {v0}, L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;-><init>()V

    sput-object v0, L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;->INSTANCE:L-$$Lambda$78YOfU-nPjCDjRF_fDI7QhoK8JI;

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

    check-cast p1, Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
