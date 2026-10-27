.class public Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;
.super Ljava/lang/Object;
.source "AreasNetRadioListParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private page:I

.field private pageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->code:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->page:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->pageSize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->code:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->page:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->pageSize:I

    return v0
.end method

.method public setCode(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->code:I

    return-object p0
.end method

.method public setPage(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->page:I

    return-object p0
.end method

.method public setPageSize(I)Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->pageSize:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreasNetRadioListParams{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->pageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
