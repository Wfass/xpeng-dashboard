.class public final synthetic L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;

    invoke-direct {v0}, L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;-><init>()V

    sput-object v0, L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;->INSTANCE:L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;

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

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Laar;->lambda$OA1wUfM2OWQg9f707cy5Kscg5Y8(Ljava/util/Map;)Ljava/awt/Point;

    move-result-object p1

    return-object p1
.end method
