.class public final synthetic L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;

    invoke-direct {v0}, L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;-><init>()V

    sput-object v0, L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;->INSTANCE:L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-static {p1, p2}, Lxc;->lambda$MYe_tOxqW4h4veSW-OiwF-VEohs(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method
