.class public final enum Lcom/blankj/utilcode/util/ImageUtils$ImageType;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blankj/utilcode/util/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 2348
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_JPG"

    const-string v2, "jpg"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2350
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_PNG"

    const-string v2, "png"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2352
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_GIF"

    const-string v2, "gif"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2354
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_TIFF"

    const-string v2, "tiff"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2356
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_BMP"

    const-string v2, "bmp"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2358
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_WEBP"

    const-string v2, "webp"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2360
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_ICO"

    const-string v2, "ico"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2362
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_UNKNOWN"

    const-string v2, "unknown"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    .line 2347
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2367
    iput-object p3, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    .line 2368
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2347
    const-class v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 1

    .line 2347
    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 2371
    iget-object v0, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-object v0
.end method
