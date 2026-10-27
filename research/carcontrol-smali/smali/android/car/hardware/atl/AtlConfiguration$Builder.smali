.class public final Landroid/car/hardware/atl/AtlConfiguration$Builder;
.super Ljava/lang/Object;
.source "AtlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/atl/AtlConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorType:I

.field private fadingTime:I

.field private intensity:I

.field private isFadeEnabled:Z

.field private isLedEnabled:Z

.field private isLeftAtlControlEnabled:Z

.field private isRightAtlControlEnabled:Z

.field private rgbBlue:I

.field private rgbGreen:I

.field private rgbRedOrPreDefinedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/car/hardware/atl/AtlConfiguration;
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 192
    iget-boolean v1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLeftAtlControlEnabled:Z

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 193
    aget-byte v1, v0, v2

    iget-boolean v3, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isRightAtlControlEnabled:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    int-to-byte v3, v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 195
    iget v3, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->colorType:I

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 196
    aget-byte v1, v0, v4

    iget-boolean v3, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled:Z

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    int-to-byte v3, v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 197
    aget-byte v1, v0, v4

    iget-boolean v3, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isFadeEnabled:Z

    const/4 v5, 0x4

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    .line 198
    iget v2, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->fadingTime:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    iget v1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->intensity:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    .line 200
    iget v2, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 201
    iget v2, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbGreen:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 202
    iget v2, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbBlue:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 203
    new-instance v1, Landroid/car/hardware/atl/AtlConfiguration;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/car/hardware/atl/AtlConfiguration;-><init>([BLandroid/car/hardware/atl/AtlConfiguration$1;)V

    return-object v1
.end method

.method public colorType(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 112
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->colorType:I

    return-object p0
.end method

.method public fadingTime(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 145
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->fadingTime:I

    return-object p0
.end method

.method public intensity(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 156
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->intensity:I

    return-object p0
.end method

.method public isFadeEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 134
    iput-boolean p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isFadeEnabled:Z

    return-object p0
.end method

.method public isLedEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 123
    iput-boolean p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled:Z

    return-object p0
.end method

.method public isLeftAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLeftAtlControlEnabled:Z

    return-object p0
.end method

.method public isRightAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 99
    iput-boolean p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isRightAtlControlEnabled:Z

    return-object p0
.end method

.method public rgbBlue(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 186
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbBlue:I

    return-object p0
.end method

.method public rgbGreen(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 176
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbGreen:I

    return-object p0
.end method

.method public rgbRedOrPreDefinedColor(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;
    .locals 0

    .line 166
    iput p1, p0, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor:I

    return-object p0
.end method
