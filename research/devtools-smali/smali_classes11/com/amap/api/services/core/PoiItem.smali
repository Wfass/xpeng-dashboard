.class public Lcom/amap/api/services/core/PoiItem;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private bH:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field protected final gA:Ljava/lang/String;

.field private gC:Lcom/amap/api/services/core/LatLonPoint;

.field private gD:Lcom/amap/api/services/core/LatLonPoint;

.field private gE:Lcom/amap/api/services/poisearch/IndoorData;

.field private gF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private gG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private gH:Lcom/amap/api/services/poisearch/PoiItemExtension;

.field protected final gz:Lcom/amap/api/services/core/LatLonPoint;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 508
    new-instance v0, Lcom/amap/api/services/core/PoiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/PoiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gF:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gG:Ljava/util/List;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 475
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gz:Lcom/amap/api/services/core/LatLonPoint;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gA:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    .line 481
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 483
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 482
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gC:Lcom/amap/api/services/core/LatLonPoint;

    .line 484
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 486
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 485
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gD:Lcom/amap/api/services/core/LatLonPoint;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    .line 490
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 491
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 492
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/core/PoiItem;->bH:Z

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    .line 500
    const-class v0, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gF:Ljava/util/List;

    .line 501
    const-class v0, Lcom/amap/api/services/poisearch/IndoorData;

    .line 503
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/IndoorData;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gE:Lcom/amap/api/services/poisearch/IndoorData;

    .line 504
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gG:Ljava/util/List;

    .line 505
    const-class v0, Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/poisearch/PoiItemExtension;

    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gH:Lcom/amap/api/services/poisearch/PoiItemExtension;

    .line 506
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gF:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gG:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/amap/api/services/core/PoiItem;->gz:Lcom/amap/api/services/core/LatLonPoint;

    .line 71
    iput-object p3, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/amap/api/services/core/PoiItem;->gA:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public V(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 209
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public a(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gC:Lcom/amap/api/services/core/LatLonPoint;

    .line 273
    return-void
.end method

.method public a(Lcom/amap/api/services/poisearch/IndoorData;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gE:Lcom/amap/api/services/poisearch/IndoorData;

    .line 450
    return-void
.end method

.method public a(Lcom/amap/api/services/poisearch/PoiItemExtension;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gH:Lcom/amap/api/services/poisearch/PoiItemExtension;

    .line 467
    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public ad(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public ae(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public af(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public b(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gD:Lcom/amap/api/services/core/LatLonPoint;

    .line 292
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 565
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 566
    return v0

    .line 567
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 568
    return v1

    .line 569
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 570
    return v1

    .line 571
    :cond_2
    check-cast p1, Lcom/amap/api/services/core/PoiItem;

    .line 572
    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 573
    iget-object p1, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 574
    return v1

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 576
    return v1

    .line 577
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 586
    nop

    .line 587
    nop

    .line 588
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 589
    return v1
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;)V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gF:Ljava/util/List;

    .line 426
    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;)V"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->gG:Ljava/util/List;

    .line 458
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lcom/amap/api/services/core/PoiItem;->bH:Z

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gz:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gC:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gD:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/amap/api/services/core/PoiItem;->bH:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 545
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gF:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 553
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gE:Lcom/amap/api/services/poisearch/IndoorData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gG:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 555
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->gH:Lcom/amap/api/services/poisearch/PoiItemExtension;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 556
    return-void
.end method
