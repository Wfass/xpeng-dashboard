.class public final synthetic L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;

    invoke-direct {v0}, L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;-><init>()V

    sput-object v0, L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;->INSTANCE:L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;

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

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
