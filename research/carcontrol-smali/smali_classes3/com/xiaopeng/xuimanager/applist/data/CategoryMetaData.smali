.class public Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
.super Ljava/lang/Object;
.source "CategoryMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:I

.field private categoryTitle:Ljava/lang/String;

.field private shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

.field private subCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->category:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->subCategory:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->categoryTitle:Ljava/lang/String;

    .line 85
    const-class v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->category:I

    return v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->categoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShareDevice()Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-object v0
.end method

.method public getSubCategory()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->subCategory:I

    return v0
.end method

.method public setCategory(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->category:I

    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->categoryTitle:Ljava/lang/String;

    return-void
.end method

.method public setShareDevice(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-void
.end method

.method public setSubCategory(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->subCategory:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryMetaData{category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->subCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->categoryTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->subCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->categoryTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->shareDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
