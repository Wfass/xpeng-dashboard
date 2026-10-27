.class public Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;
.super Ljava/lang/Object;
.source "Maneuver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maneuverData:Ljava/lang/String;

.field private maneuverID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverID:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getManeuverData()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverData:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuverID()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverID:J

    return-wide v0
.end method

.method public setManeuverData(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverData:Ljava/lang/String;

    return-void
.end method

.method public setManeuverID(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverID:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->maneuverData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
