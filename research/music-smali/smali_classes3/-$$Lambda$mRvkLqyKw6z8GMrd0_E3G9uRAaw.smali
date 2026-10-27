.class public final synthetic L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;

    invoke-direct {v0}, L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;-><init>()V

    sput-object v0, L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;->INSTANCE:L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;

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

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1
.end method
