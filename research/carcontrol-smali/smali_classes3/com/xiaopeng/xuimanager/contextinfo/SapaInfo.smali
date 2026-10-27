.class public Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;
.super Ljava/lang/Object;
.source "SapaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private remainDist:I

.field private remainDistDisplay:Ljava/lang/String;

.field private remainDistUnitDisplay:I

.field private sapaDetail:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->sapaDetail:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->type:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDist:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistDisplay:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistUnitDisplay:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainDist()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDist:I

    return v0
.end method

.method public getRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainDistUnitDisplay()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistUnitDisplay:I

    return v0
.end method

.method public getSapaDetail()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->sapaDetail:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->type:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRemainDist(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDist:I

    return-void
.end method

.method public setRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setRemainDistUnitDisplay(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistUnitDisplay:I

    return-void
.end method

.method public setSapaDetail(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->sapaDetail:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 184
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->sapaDetail:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->remainDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
