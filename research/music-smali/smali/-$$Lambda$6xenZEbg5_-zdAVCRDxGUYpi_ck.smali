.class public final synthetic L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;

    invoke-direct {v0}, L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;-><init>()V

    sput-object v0, L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;->INSTANCE:L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;

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

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->g()Z

    move-result p1

    return p1
.end method
