.class public Lcom/xiaopeng/xuimanager/condition/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/condition/TwilightState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sunriseTimeMillis:J

.field private sunsetTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/TwilightState$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/condition/TwilightState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunriseTimeMillis:J

    .line 17
    iput-wide p3, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunsetTimeMillis:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunriseTimeMillis:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunsetTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSunriseTimeMillis()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunriseTimeMillis:J

    return-wide v0
.end method

.method public getSunsetTimeMillis()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunsetTimeMillis:J

    return-wide v0
.end method

.method public setSunriseTimeMillis(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunriseTimeMillis:J

    return-void
.end method

.method public setSunsetTimeMillis(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunsetTimeMillis:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunriseTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/condition/TwilightState;->sunsetTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
