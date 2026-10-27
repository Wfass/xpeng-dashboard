.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumType;
.super Ljava/lang/Object;
.source "MusicAlbumType.java"


# static fields
.field public static final CLASSIFIED_TYPE_APP_CUSTOM:I = 0x2

.field public static final CLASSIFIED_TYPE_APP_FAV:I = 0x3

.field public static final CLASSIFIED_TYPE_ERROR:I = -0x1

.field public static final CLASSIFIED_TYPE_MY_FAV:I = 0x4

.field public static final CLASSIFIED_TYPE_PHONE_IMPORT:I = 0x1

.field private static final TYPE_IMPORT_LIST:I = 0x3

.field private static final TYPE_KUGOU_SYNC_LIST:I = 0x2

.field private static final TYPE_OTHER_BUILD_KUGOU_LIST:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(IZ)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    if-ne p0, v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static revertType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method
