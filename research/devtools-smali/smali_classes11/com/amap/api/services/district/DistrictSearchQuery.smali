.class public Lcom/amap/api/services/district/DistrictSearchQuery;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/district/DistrictSearchQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 364
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictSearchQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictSearchQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 41
    const/16 v1, 0x14

    iput v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 45
    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 41
    const/16 v1, 0x14

    iput v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 45
    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 84
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    iput-boolean p4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 102
    iput p5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 103
    return-void
.end method


# virtual methods
.method public Z(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 121
    return-void
.end method

.method public aa(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 139
    return-void
.end method

.method public ag(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public ah(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public bI()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 9

    .line 330
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    const-string v1, "DistrictSearchQuery"

    const-string v2, "clone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget v6, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget-boolean v7, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget v8, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 336
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->n(Z)V

    .line 337
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->p(Z)V

    .line 338
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->bI()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 272
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 273
    return v0

    .line 274
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 275
    return v1

    .line 276
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 277
    return v1

    .line 278
    :cond_2
    check-cast p1, Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 279
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    if-eq v2, v3, :cond_3

    .line 280
    return v1

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 282
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 283
    return v1

    .line 284
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 285
    return v1

    .line 286
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 287
    iget-object v2, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 288
    return v1

    .line 289
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 290
    return v1

    .line 291
    :cond_7
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    if-eq v2, v3, :cond_8

    .line 292
    return v1

    .line 293
    :cond_8
    iget v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-eq v2, v3, :cond_9

    .line 294
    return v1

    .line 295
    :cond_9
    iget-boolean v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean p1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eq v2, p1, :cond_a

    .line 296
    return v1

    .line 297
    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 251
    nop

    .line 252
    nop

    .line 253
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    .line 254
    mul-int/2addr v0, v3

    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 255
    move v4, v5

    goto :goto_1

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 255
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    .line 256
    mul-int/2addr v0, v3

    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_2
    add-int/2addr v0, v5

    .line 258
    mul-int/2addr v0, v3

    iget v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    add-int/2addr v0, v4

    .line 259
    mul-int/2addr v0, v3

    iget v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    add-int/2addr v0, v4

    .line 260
    mul-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    add-int/2addr v3, v1

    .line 261
    return v3
.end method

.method public n(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    .line 56
    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 193
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    .line 209
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 354
    iget-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 359
    iget-boolean p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 360
    iget-boolean p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 362
    return-void
.end method
