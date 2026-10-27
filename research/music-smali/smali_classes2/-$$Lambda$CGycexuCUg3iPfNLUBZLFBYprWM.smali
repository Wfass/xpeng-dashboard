.class public final synthetic L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;

    invoke-direct {v0}, L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;-><init>()V

    sput-object v0, L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;->INSTANCE:L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;

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

    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata;

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p1}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-object v0
.end method
