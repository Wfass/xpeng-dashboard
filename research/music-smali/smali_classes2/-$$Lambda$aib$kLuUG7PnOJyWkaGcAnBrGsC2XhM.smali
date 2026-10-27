.class public final synthetic L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;

    invoke-direct {v0}, L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;-><init>()V

    sput-object v0, L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;->INSTANCE:L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-static {p1}, Laib;->lambda$kLuUG7PnOJyWkaGcAnBrGsC2XhM(Lcom/android/car/media/common/MediaItemMetadata;)Z

    move-result p1

    return p1
.end method
