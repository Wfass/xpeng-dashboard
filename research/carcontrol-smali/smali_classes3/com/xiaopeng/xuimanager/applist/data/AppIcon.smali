.class public Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
.super Ljava/lang/Object;
.source "AppIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "##AppIcon"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private isMemoryBmp:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 90
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v1

    aget-object v6, v1, v0

    .line 97
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    move-object v1, p0

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmpFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 100
    :cond_1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method private bmpFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "##AppIcon"

    const/4 v1, 0x0

    .line 185
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 186
    new-array p2, p2, [B

    .line 187
    invoke-virtual {v2, p2}, Ljava/io/FileInputStream;->read([B)I

    .line 188
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 189
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 190
    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bmpFromParcelFileDescriptor done,bmp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bmpFromParcelFileDescriptor error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private bmpToParcel(Landroid/os/Parcel;Landroid/graphics/Bitmap;)I
    .locals 5

    const-string v0, "##AppIcon"

    .line 138
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 139
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 140
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 141
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 142
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 152
    :try_start_1
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :try_start_2
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 161
    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 162
    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    array-length v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return v4

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bmpToParcel error4:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bmpToParcel error3:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    :catch_2
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bmpToParcel error1:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitMap()Landroid/graphics/Bitmap;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIsMemoryBmp()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsMemoryBmp(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmpToParcel(Landroid/os/Parcel;Landroid/graphics/Bitmap;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->isMemoryBmp:Z

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
