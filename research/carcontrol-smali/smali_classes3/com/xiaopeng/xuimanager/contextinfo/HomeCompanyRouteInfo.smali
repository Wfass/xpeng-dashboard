.class public Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;
.super Ljava/lang/Object;
.source "HomeCompanyRouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distance:J

.field private isOnline:I

.field private routeInfoType:I

.field private trafficBar:Ljava/lang/String;

.field private travelTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->routeInfoType:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->distance:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->travelTime:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->isOnline:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->trafficBar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDistance()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->distance:J

    return-wide v0
.end method

.method public getIsOnline()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->isOnline:I

    return v0
.end method

.method public getRouteInfoType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->routeInfoType:I

    return v0
.end method

.method public getTrafficBar()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->trafficBar:Ljava/lang/String;

    return-object v0
.end method

.method public getTravelTime()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->travelTime:J

    return-wide v0
.end method

.method public setDistance(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->distance:J

    return-void
.end method

.method public setIsOnline(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->isOnline:I

    return-void
.end method

.method public setRouteInfoType(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->routeInfoType:I

    return-void
.end method

.method public setTrafficBar(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->trafficBar:Ljava/lang/String;

    return-void
.end method

.method public setTravelTime(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->travelTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 142
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->routeInfoType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->distance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->travelTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->isOnline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->trafficBar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
