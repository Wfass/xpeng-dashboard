.class public final synthetic L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;

    invoke-direct {v0}, L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;-><init>()V

    sput-object v0, L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;->INSTANCE:L-$$Lambda$P2BGAVOo6bhKxuVpDE1y8Di1yzs;

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

    invoke-static {p1}, Ljava/util/Collections;->synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
