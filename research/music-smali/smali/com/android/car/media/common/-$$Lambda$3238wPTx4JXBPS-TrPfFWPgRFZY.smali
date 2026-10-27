.class public final synthetic Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lz;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;

    invoke-direct {v0}, Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;-><init>()V

    sput-object v0, Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;->INSTANCE:Lcom/android/car/media/common/-$$Lambda$3238wPTx4JXBPS-TrPfFWPgRFZY;

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

    check-cast p1, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->e()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
