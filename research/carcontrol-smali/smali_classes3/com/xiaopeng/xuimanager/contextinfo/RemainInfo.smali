.class public Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;
.super Ljava/lang/Object;
.source "RemainInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carRemainDist:I

.field private carRemainDistDisplay:Ljava/lang/String;

.field private carRemainDistUnitDisplay:I

.field private distType:I

.field private routeRemainDist:I

.field private routeRemainDistDisplay:Ljava/lang/String;

.field private routeRemainDistUnitDisplay:I

.field private smartStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDist:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDist:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->distType:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistDisplay:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistUnitDisplay:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistDisplay:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistUnitDisplay:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->smartStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCarRemainDist()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDist:I

    return v0
.end method

.method public getCarRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCarRemainDistUnitDisplay()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistUnitDisplay:I

    return v0
.end method

.method public getDistType()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->distType:I

    return v0
.end method

.method public getRouteRemainDist()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDist:I

    return v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistUnitDisplay:I

    return v0
.end method

.method public getSmartStatus()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->smartStatus:I

    return v0
.end method

.method public setCarRemainDist(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDist:I

    return-void
.end method

.method public setCarRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setCarRemainDistUnitDisplay(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistUnitDisplay:I

    return-void
.end method

.method public setDistType(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->distType:I

    return-void
.end method

.method public setRouteRemainDist(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDist:I

    return-void
.end method

.method public setRouteRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setRouteRemainDistUnitDisplay(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistUnitDisplay:I

    return-void
.end method

.method public setSmartStatus(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->smartStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 219
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->distType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->routeRemainDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->carRemainDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->smartStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
