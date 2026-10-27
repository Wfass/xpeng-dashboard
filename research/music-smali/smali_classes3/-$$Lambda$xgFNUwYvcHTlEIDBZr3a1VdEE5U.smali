.class public final synthetic L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;

    invoke-direct {v0}, L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;-><init>()V

    sput-object v0, L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;->INSTANCE:L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p1

    return-object p1
.end method
