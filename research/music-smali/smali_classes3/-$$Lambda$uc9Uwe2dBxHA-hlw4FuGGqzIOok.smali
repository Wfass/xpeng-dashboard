.class public final synthetic L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;

    invoke-direct {v0}, L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;-><init>()V

    sput-object v0, L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;->INSTANCE:L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;

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

    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
