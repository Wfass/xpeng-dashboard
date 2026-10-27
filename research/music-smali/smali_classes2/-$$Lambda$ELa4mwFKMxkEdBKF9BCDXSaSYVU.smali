.class public final synthetic L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;

    invoke-direct {v0}, L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;-><init>()V

    sput-object v0, L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;->INSTANCE:L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;

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

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method
