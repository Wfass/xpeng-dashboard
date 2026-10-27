.class public Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
.super Ljava/lang/Object;
.source "ResourceContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPage:I

.field private mResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:I

.field private totalCount:I

.field private totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalCount:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->pageCount:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalPage:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->currentPage:I

    .line 80
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->currentPage:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->pageCount:I

    return v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/Resource;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalPage:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPage"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->currentPage:I

    .line 65
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageCount"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->pageCount:I

    .line 49
    return-void
.end method

.method public setResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/Resource;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/Resource;>;"
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalCount"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalCount:I

    .line 41
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0
    .param p1, "totalPage"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalPage"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalPage:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResContainer{totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->pageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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

    .line 85
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->pageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->totalPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->mResourceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    return-void
.end method
