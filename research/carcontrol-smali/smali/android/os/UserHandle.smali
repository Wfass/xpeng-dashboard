.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AID_APP_END:I = 0x4e1f

.field public static final AID_APP_START:I = 0x2710

.field public static final AID_CACHE_GID_START:I = 0x4e20

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHARED_GID_START:I = 0xc350

.field public static final ALL:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final CACHED_USER_INFOS:[Landroid/os/UserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final ERR_GID:I = -0x1

.field public static final MIN_SECONDARY_USER_ID:I = 0xa

.field public static final MU_ENABLED:Z = true

.field private static final NULL:Landroid/os/UserHandle;

.field private static final NUM_CACHED_USERS:I = 0x4

.field public static final OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SERIAL_SYSTEM:I

.field public static final USER_SYSTEM:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 58
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 70
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 77
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    .line 95
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 108
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/UserHandle;

    .line 128
    sput-object v0, Landroid/os/UserHandle;->CACHED_USER_INFOS:[Landroid/os/UserHandle;

    .line 133
    :goto_0
    sget-object v0, Landroid/os/UserHandle;->CACHED_USER_INFOS:[Landroid/os/UserHandle;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 134
    new-instance v2, Landroid/os/UserHandle;

    add-int/lit8 v3, v1, 0xa

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_0
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public static formatUid(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .locals 2

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    .line 457
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 458
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 459
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 460
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x182b8

    if-le p1, v0, :cond_1

    const/16 v1, 0x69

    .line 462
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    sub-int/2addr p1, v0

    .line 463
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ai"

    .line 465
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const v0, 0x15f90

    sub-int/2addr p1, v0

    .line 466
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    const/16 v1, 0x61

    .line 469
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    sub-int/2addr p1, v0

    .line 470
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x73

    .line 472
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 473
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    .line 410
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 413
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x182b8

    if-le p1, v0, :cond_1

    const/16 v1, 0x69

    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "ai"

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x15f90

    sub-int/2addr p1, v0

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    const/16 v1, 0x61

    .line 422
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x73

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static fromUserHandles(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)[I"
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 272
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getAppId(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const v0, 0x186a0

    .line 346
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getAppIdFromSharedAppGid(I)I
    .locals 1

    .line 379
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x2710

    const v0, 0xc350

    sub-int/2addr p0, v0

    if-ltz p0, :cond_1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCacheAppGid(I)I
    .locals 1

    .line 389
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/UserHandle;->getCacheAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getCacheAppGid(II)I
    .locals 2

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x4e20

    .line 395
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCallingAppId()I
    .locals 1

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(I)I
    .locals 1

    .line 359
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/UserHandle;->getSharedAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getSharedAppGid(II)I
    .locals 1

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    const p0, 0xc350

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getUid(II)I
    .locals 1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    .line 322
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserGid(I)I
    .locals 1

    const/16 v0, 0x270d

    .line 354
    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static getUserHandleForUid(I)Landroid/os/UserHandle;
    .locals 0

    .line 239
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(I)I
    .locals 1

    const v0, 0x186a0

    .line 250
    div-int/2addr p0, v0

    return p0
.end method

.method public static isApp(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 205
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCore(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 218
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isIsolated(I)Z
    .locals 0

    if-lez p0, :cond_0

    .line 190
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameApp(II)Z
    .locals 0

    .line 180
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameUser(II)Z
    .locals 0

    .line 167
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSharedAppGid(I)Z
    .locals 1

    .line 230
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static myUserId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 502
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p0, :cond_0

    .line 291
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object p0

    :cond_0
    const/4 v0, -0x3

    if-eq p0, v0, :cond_5

    const/4 v0, -0x2

    if-eq p0, v0, :cond_4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 304
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_INFOS:[Landroid/os/UserHandle;

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p0, v2, :cond_1

    sub-int/2addr p0, v0

    .line 306
    aget-object p0, v1, p0

    return-object p0

    :cond_1
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_2

    .line 309
    sget-object p0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    return-object p0

    .line 311
    :cond_2
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0

    .line 296
    :cond_3
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object p0

    .line 299
    :cond_4
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object p0

    .line 302
    :cond_5
    sget-object p0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object p0
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .locals 3

    const-string v0, "all"

    .line 481
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    const-string v0, "current"

    .line 483
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 489
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 1

    .line 602
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 603
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toUserHandles([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 281
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 282
    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/16 p0, -0x2710

    .line 586
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 552
    :try_start_0
    check-cast p1, Landroid/os/UserHandle;

    .line 553
    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    iget p1, p1, Landroid/os/UserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 540
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public getUid(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 337
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 562
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public isOwner()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 525
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 570
    iget p2, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
