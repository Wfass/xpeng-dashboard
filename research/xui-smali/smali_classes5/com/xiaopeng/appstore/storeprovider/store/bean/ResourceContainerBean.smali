.class public Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
.super Ljava/lang/Object;
.source "ResourceContainerBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentPage:I

.field private mResourceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;",
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

    .line 19
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    .line 64
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalCount:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->pageCount:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalPage:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->currentPage:I

    .line 71
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    .line 72
    return-void
.end method

.method private getCurrentPage()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->currentPage:I

    return v0
.end method

.method private getPageCount()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->pageCount:I

    return v0
.end method

.method private getTotalCount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalCount:I

    return v0
.end method

.method private getTotalPage()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalPage:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getResourceBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    return-object v0
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

    .line 143
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->currentPage:I

    .line 144
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

    .line 119
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->pageCount:I

    .line 120
    return-void
.end method

.method public setResourceBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "resourceBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    .line 161
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

    .line 107
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalCount:I

    .line 108
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

    .line 131
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalPage:I

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceContainerBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->pageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", mResourceBeanList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 82
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->pageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->totalPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;->mResourceBeanList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    return-void
.end method
