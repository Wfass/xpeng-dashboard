.class public final synthetic Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lz;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;

    invoke-direct {v0}, Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;-><init>()V

    sput-object v0, Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$tVyA3rxmL29N7lpERKfq5fRaA8A;

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

    check-cast p1, Lcom/android/car/media/common/source/b;

    invoke-virtual {p1}, Lcom/android/car/media/common/source/b;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
