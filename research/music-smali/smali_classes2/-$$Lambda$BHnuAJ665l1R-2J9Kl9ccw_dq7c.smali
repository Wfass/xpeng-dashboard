.class public final synthetic L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-direct {v0}, L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;-><init>()V

    sput-object v0, L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
