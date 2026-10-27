.class public Lcom/xiaopeng/xuimanager/contextinfo/Cross;
.super Ljava/lang/Object;
.source "Cross.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Cross;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrowDataBuffer:Ljava/lang/String;

.field private crossType:I

.field private dataBuffer:Ljava/lang/String;

.field private isCrossShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Cross$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Cross$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->isCrossShow:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->crossType:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->dataBuffer:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->arrowDataBuffer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArrowDataBuffer()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->arrowDataBuffer:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->crossType:I

    return v0
.end method

.method public getDataBuffer()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->dataBuffer:Ljava/lang/String;

    return-object v0
.end method

.method public isCrossShow()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->isCrossShow:Z

    return v0
.end method

.method public setArrowDataBuffer(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->arrowDataBuffer:Ljava/lang/String;

    return-void
.end method

.method public setCrossShow(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->isCrossShow:Z

    return-void
.end method

.method public setCrossType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->crossType:I

    return-void
.end method

.method public setDataBuffer(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->dataBuffer:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->isCrossShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->crossType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->dataBuffer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->arrowDataBuffer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
