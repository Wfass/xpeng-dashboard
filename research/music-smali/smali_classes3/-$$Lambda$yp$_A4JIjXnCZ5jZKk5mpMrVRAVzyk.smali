.class public final synthetic L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;

    invoke-direct {v0}, L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;-><init>()V

    sput-object v0, L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;->INSTANCE:L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;

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

    invoke-static {p1}, Lyp;->lambda$_A4JIjXnCZ5jZKk5mpMrVRAVzyk(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
