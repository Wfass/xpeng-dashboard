.class public Landroid/os/storage/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOCUMENT_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final DOCUMENT_ROOT_PRIMARY_EMULATED:Ljava/lang/String; = "primary"

.field public static final EXTRA_VOLUME_ID:Ljava/lang/String; = "android.os.storage.extra.VOLUME_ID"

.field public static final EXTRA_VOLUME_STATE:Ljava/lang/String; = "android.os.storage.extra.VOLUME_STATE"

.field public static final ID_EMULATED_INTERNAL:Ljava/lang/String; = "emulated"

.field public static final ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final MOUNT_FLAG_VISIBLE:I = 0x2

.field public static final STATE_BAD_REMOVAL:I = 0x8

.field public static final STATE_CHECKING:I = 0x1

.field public static final STATE_EJECTING:I = 0x5

.field public static final STATE_FORMATTING:I = 0x4

.field public static final STATE_MOUNTED:I = 0x2

.field public static final STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final STATE_REMOVED:I = 0x7

.field public static final STATE_UNMOUNTABLE:I = 0x6

.field public static final STATE_UNMOUNTED:I = 0x0

.field public static final TYPE_ASEC:I = 0x3

.field public static final TYPE_EMULATED:I = 0x2

.field public static final TYPE_OBB:I = 0x4

.field public static final TYPE_PRIVATE:I = 0x1

.field public static final TYPE_PUBLIC:I = 0x0

.field public static final TYPE_STUB:I = 0x5

.field private static final sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnvironmentToBroadcast:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStateToDescrip:Landroid/util/SparseIntArray;

.field private static sStateToEnvironment:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final disk:Landroid/os/storage/DiskInfo;

.field public fsLabel:Ljava/lang/String;

.field public fsType:Ljava/lang/String;

.field public fsUuid:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public internalPath:Ljava/lang/String;

.field public mountFlags:I

.field public mountUserId:I

.field public final partGuid:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public state:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    .line 107
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    .line 110
    new-instance v0, Landroid/os/storage/VolumeInfo$1;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    .line 126
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "unmounted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v3, 0x1

    const-string v4, "checking"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v5, 0x2

    const-string v6, "mounted"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v7, 0x3

    const-string v8, "mounted_ro"

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v10, 0x5

    const-string v11, "ejecting"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v12, 0x6

    const-string/jumbo v13, "unmountable"

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/4 v14, 0x7

    const-string/jumbo v15, "removed"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    const/16 v14, 0x8

    const-string v12, "bad_removal"

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v14, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v2, 0x1040342

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104033a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104033e

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104033f

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104033c

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x104033b

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040341

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040340

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    const v1, 0x1040339

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 558
    new-instance v0, Landroid/os/storage/VolumeInfo$2;

    invoke-direct {v0}, Landroid/os/storage/VolumeInfo$2;-><init>()V

    sput-object v0, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/16 v1, -0x2710

    .line 164
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 165
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 193
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/16 v1, -0x2710

    .line 164
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 165
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 205
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 206
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 207
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 208
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 209
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 210
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 211
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 212
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 216
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/16 v1, -0x2710

    .line 164
    iput v1, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 165
    iput v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 178
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 179
    iput p2, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 180
    iput-object p3, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 181
    iput-object p4, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    return-void
.end method

.method public static buildStableMtpStorageId(Ljava/lang/String;)I
    .locals 3

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 456
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 457
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 p0, v0, 0x10

    xor-int/2addr p0, v0

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    const/high16 v1, 0x20000

    if-nez p0, :cond_2

    move p0, v1

    :cond_2
    const/high16 v2, 0x10000

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, p0

    :goto_1
    if-ne v1, v0, :cond_4

    const/high16 v1, -0x20000

    :cond_4
    or-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public static getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 230
    sget-object v0, Landroid/os/storage/VolumeInfo;->sEnvironmentToBroadcast:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getBroadcastForState(I)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v0, Landroid/os/storage/VolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getEnvironmentForState(I)Ljava/lang/String;
    .locals 1

    .line 221
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToEnvironment:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public buildBrowseIntent()Landroid/content/Intent;
    .locals 1

    .line 479
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntentForUser(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildBrowseIntentForUser(I)Landroid/content/Intent;
    .locals 3

    .line 484
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const-string v1, "com.android.externalstorage.documents"

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v2, p1, :cond_1

    .line 486
    iget-object p1, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 487
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "primary"

    .line 488
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 494
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.document/root"

    .line 496
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result p1

    const-string v1, "android.provider.extra.SHOW_ADVANCED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 387
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    if-eqz p3, :cond_0

    const-string/jumbo v4, "unmounted"

    goto :goto_0

    .line 393
    :cond_0
    iget v4, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object/from16 v19, v4

    .line 395
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "/dev/null"

    if-nez v4, :cond_1

    .line 397
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v7, v4

    .line 399
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    .line 401
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v8, v4

    .line 406
    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 409
    iget v9, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v9, v10, :cond_4

    .line 412
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 414
    invoke-virtual {v3, v9}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v11

    .line 415
    iget-object v3, v9, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 416
    iget-object v4, v9, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto :goto_1

    .line 418
    :cond_3
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 421
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/storage/VolumeInfo;->isPrimaryEmulatedForUser(I)Z

    move-result v9

    xor-int/2addr v9, v12

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide v14, v5

    move v3, v12

    move v12, v9

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_6

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    goto :goto_2

    .line 438
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected volume type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 431
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    .line 433
    iget-object v10, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string/jumbo v13, "vfat"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-wide v5, 0xffffffffL

    :cond_7
    move-object/from16 v18, v4

    move-wide v14, v5

    move-object/from16 v17, v11

    move-object v11, v3

    move v3, v9

    :goto_3
    if-nez v11, :cond_8

    const v4, 0x104000e

    .line 442
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_8
    move-object v9, v11

    .line 445
    :goto_4
    new-instance v1, Landroid/os/storage/StorageVolume;

    iget-object v6, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v10

    const/4 v13, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v1

    move v11, v12

    move v12, v3

    move-object/from16 v16, v4

    invoke-direct/range {v5 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public clone()Landroid/os/storage/VolumeInfo;
    .locals 2

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 535
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/storage/VolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 537
    sget-object v1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    const-string v2, "TYPE_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 515
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diskId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 516
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    const-string v1, "partGuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const-string v2, "MOUNT_FLAG_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mountFlags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 518
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mountUserId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 519
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const-string v2, "STATE_"

    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 521
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    const-string v1, "fsType"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 522
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    const-string v1, "fsUuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    const-string v1, "fsLabel"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 525
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 526
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    const-string v1, "internalPath"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 527
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 545
    instance-of v0, p1, Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v1, "emulated;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_2
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104084d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 2

    .line 353
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInternalPathForUser(I)Ljava/io/File;
    .locals 3

    .line 375
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 377
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 379
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const-string v1, "/storage/"

    const-string v2, "/mnt/media_rw/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getMountUserId()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public getNormalizedFsUuid()Ljava/lang/String;
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 2

    .line 348
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPathForUser(I)Ljava/io/File;
    .locals 3

    .line 358
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 363
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1

    .line 361
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getState()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getStateDescription()I
    .locals 3

    .line 267
    sget-object v0, Landroid/os/storage/VolumeInfo;->sStateToDescrip:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 258
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMountedReadable()Z
    .locals 2

    .line 297
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMountedWritable()Z
    .locals 2

    .line 302
    iget v0, p0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 2

    .line 307
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPrimaryEmulatedForUser(I)Z
    .locals 3

    .line 334
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emulated;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPrimaryPhysical()Z
    .locals 1

    .line 312
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 317
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisibleForRead(I)Z
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result p1

    return p1
.end method

.method public isVisibleForUser(I)Z
    .locals 2

    .line 321
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v0, p1, :cond_1

    .line 323
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isVisibleForWrite(I)Z
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 506
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 507
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 577
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 578
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 580
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object v0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/DiskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 583
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    :goto_0
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 586
    iget p2, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget p2, p0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget p2, p0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 590
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 591
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 592
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 593
    iget-object p2, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
