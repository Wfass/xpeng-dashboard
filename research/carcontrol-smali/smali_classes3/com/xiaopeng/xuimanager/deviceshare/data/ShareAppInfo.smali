.class public Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
.super Ljava/lang/Object;
.source "ShareAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "##ShareAppInfo"


# instance fields
.field private appId:I

.field private friendName:Ljava/lang/String;

.field private gearLevelFlags:I

.field private icon:[B

.field private packageName:Ljava/lang/String;

.field private protocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    .line 53
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 54
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    .line 60
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 61
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    .line 64
    iput p5, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->gearLevelFlags:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 82
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->restoreBytesFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;[B)V

    :cond_0
    return-void
.end method

.method private bytesToMemoryFileAndWriteToParcel(Landroid/os/Parcel;[B)I
    .locals 5

    const-string v0, "bytesToMemoryFileAndWriteToParcel error:"

    const-string v1, "##ShareAppInfo"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    :try_start_0
    new-instance v3, Landroid/os/MemoryFile;

    array-length v4, p2

    invoke-direct {v3, v2, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :try_start_1
    array-length v2, p2

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v4, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :try_start_2
    invoke-virtual {v3}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 245
    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return v4

    :catch_0
    move-exception p1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    :catch_2
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "memoryFileCreate error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private restoreBytesFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 2

    .line 264
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 265
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    .line 266
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 267
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreBytesFromParcelFileDescriptor error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "##ShareAppInfo"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public copyWithoutIcon()Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .locals 7

    .line 218
    new-instance v6, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    iget v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    iget v5, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;[BI)V

    return-object v6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    return v0
.end method

.method public getFriendName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    return-object v0
.end method

.method public getGearLevelFlags()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->gearLevelFlags:I

    return v0
.end method

.method public getIcon()[B
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    return v0
.end method

.method public setAppId(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    return-void
.end method

.method public setFriendName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    return-void
.end method

.method public setGearLevelFlags(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->gearLevelFlags:I

    return-void
.end method

.method public setIcon([B)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareApp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 196
    iget p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->protocol:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->friendName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->appId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->gearLevelFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->icon:[B

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->bytesToMemoryFileAndWriteToParcel(Landroid/os/Parcel;[B)I

    move-result p2

    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    :goto_0
    return-void
.end method
