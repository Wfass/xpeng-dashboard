.class public final synthetic L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;

    invoke-direct {v0}, L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;-><init>()V

    sput-object v0, L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;->INSTANCE:L-$$Lambda$9uKMy62MdTULUdJDO6M_KfCFe1Q;

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

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
