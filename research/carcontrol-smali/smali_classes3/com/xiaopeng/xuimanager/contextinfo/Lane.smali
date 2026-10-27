.class public Lcom/xiaopeng/xuimanager/contextinfo/Lane;
.super Ljava/lang/Object;
.source "Lane.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Lane;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backLane:[I

.field private frontLane:[I

.field private isLaneShow:Z

.field private laneType:I

.field private tollGateInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Lane$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Lane$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->isLaneShow:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->laneType:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->backLane:[I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->frontLane:[I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->tollGateInfo:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackLane()[I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->backLane:[I

    return-object v0
.end method

.method public getFrontLane()[I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->frontLane:[I

    return-object v0
.end method

.method public getLaneType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->laneType:I

    return v0
.end method

.method public getTollGateInfo()[I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->tollGateInfo:[I

    return-object v0
.end method

.method public isLaneShow()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->isLaneShow:Z

    return v0
.end method

.method public setBackLane([I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->backLane:[I

    return-void
.end method

.method public setFrontLane([I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->frontLane:[I

    return-void
.end method

.method public setLaneShow(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->isLaneShow:Z

    return-void
.end method

.method public setLaneType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->laneType:I

    return-void
.end method

.method public setTollGateInfo([I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->tollGateInfo:[I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 129
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->isLaneShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->laneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->backLane:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 132
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->frontLane:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->tollGateInfo:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
