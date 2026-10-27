.class public final synthetic L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;

    invoke-direct {v0}, L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;-><init>()V

    sput-object v0, L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;->INSTANCE:L-$$Lambda$wYLEAQPOTKVqLtLivrwguf8vywY;

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

    check-cast p1, Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
