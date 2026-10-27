.class public Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
.super Ljava/lang/Object;
.source "ResourceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_ALL:I = 0x64

.field public static final ACTION_QUERY_LOCAL:I = 0x12c

.field public static final ACTION_QUERY_REMOTE:I = 0xc8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:I

.field private final mExtra:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mResId:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mResourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "resourceType"    # I
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "action"
        }
    .end annotation

    .line 29
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;-><init>(IIJ)V

    .line 30
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 6
    .param p1, "resourceType"    # I
    .param p2, "action"    # I
    .param p3, "resId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "action",
            "resId"
        }
    .end annotation

    .line 33
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;-><init>(IIJLandroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method private constructor <init>(IIJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "resourceType"    # I
    .param p2, "action"    # I
    .param p3, "resId"    # J
    .param p5, "extra"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "action",
            "resId",
            "extra"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResourceType:I

    .line 41
    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mAction:I

    .line 42
    iput-wide p3, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResId:J

    .line 43
    iput-object p5, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mExtra:Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IIJLandroid/os/Bundle;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Landroid/os/Bundle;
    .param p6, "x4"    # Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;

    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;-><init>(IIJLandroid/os/Bundle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResourceType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mAction:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResId:J

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mExtra:Landroid/os/Bundle;

    .line 79
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mAction:I

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getResId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResId:J

    return-wide v0
.end method

.method public getResourceType()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResourceType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceRequest{resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
