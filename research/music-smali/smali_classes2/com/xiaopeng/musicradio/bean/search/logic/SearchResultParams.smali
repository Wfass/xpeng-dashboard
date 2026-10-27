.class public Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
.super Ljava/lang/Object;
.source "SearchResultParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountType:I

.field private keyword:Ljava/lang/String;

.field private page:I

.field private pageSize:I

.field private searchType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->accountType:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->keyword:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->searchType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->page:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->pageSize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->accountType:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->pageSize:I

    return v0
.end method

.method public getSearchType()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->searchType:I

    return v0
.end method

.method public setAccountType(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->accountType:I

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public setPage(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
    .locals 0

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->page:I

    return-object p0
.end method

.method public setPageSize(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
    .locals 0

    .line 87
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->pageSize:I

    return-object p0
.end method

.method public setSearchType(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->searchType:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResultParams{accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->accountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", searchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->searchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->accountType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->searchType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchResultParams;->pageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
