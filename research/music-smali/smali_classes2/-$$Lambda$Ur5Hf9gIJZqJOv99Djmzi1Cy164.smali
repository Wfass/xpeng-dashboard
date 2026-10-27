.class public final synthetic L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;

    invoke-direct {v0}, L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;-><init>()V

    sput-object v0, L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;->INSTANCE:L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;

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

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
