.class Landroidx/exifinterface/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    .line 3302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3303
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3304
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3305
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3306
    const/4 v0, -0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3307
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    .line 3309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3310
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3311
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3312
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3313
    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3314
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroidx/exifinterface/media/ExifInterface$1;

    .line 3296
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroidx/exifinterface/media/ExifInterface$1;

    .line 3296
    invoke-direct {p0, p1, p2, p3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$900(Landroidx/exifinterface/media/ExifInterface$ExifTag;I)Z
    .locals 1
    .param p0, "x0"    # Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .param p1, "x1"    # I

    .line 3296
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v0

    return v0
.end method

.method private isFormatCompatible(I)Z
    .locals 3
    .param p1, "format"    # I

    .line 3317
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 3319
    :cond_0
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 3321
    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3323
    return v2

    .line 3324
    :cond_3
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 3326
    return v2

    .line 3327
    :cond_5
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    .line 3329
    return v2

    .line 3331
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 3320
    :cond_8
    :goto_0
    return v2

    .line 3318
    :cond_9
    :goto_1
    return v2
.end method
