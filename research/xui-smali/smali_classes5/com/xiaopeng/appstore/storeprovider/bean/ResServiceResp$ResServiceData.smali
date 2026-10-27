.class public Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
.super Ljava/lang/Object;
.source "ResServiceResp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResServiceData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:I

.field private pages:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->total:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->size:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->pages:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->current:I

    .line 86
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->records:Ljava/util/List;

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->current:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->size:I

    return v0
.end method

.method public getResServiceBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->records:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->total:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->pages:I

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

    .line 132
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->current:I

    .line 133
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

    .line 116
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->size:I

    .line 117
    return-void
.end method

.method public setResServiceBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resServiceBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "resServiceBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->records:Ljava/util/List;

    .line 142
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

    .line 108
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->total:I

    .line 109
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

    .line 124
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->pages:I

    .line 125
    return-void
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

    .line 91
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->pages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;->records:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    return-void
.end method
