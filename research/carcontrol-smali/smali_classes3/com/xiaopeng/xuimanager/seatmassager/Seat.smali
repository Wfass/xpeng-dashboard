.class public Lcom/xiaopeng/xuimanager/seatmassager/Seat;
.super Ljava/lang/Object;
.source "Seat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private intensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/xuimanager/seatmassager/Seat$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/seatmassager/Seat$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    .line 26
    iput p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/xuimanager/seatmassager/Seat$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 54
    instance-of v2, p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    if-eqz v2, :cond_2

    .line 55
    check-cast p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    iget v2, p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    iget v3, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    if-ne v2, v3, :cond_1

    iget p1, p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    iget v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public getId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    return-void
.end method

.method public setIntensity(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 73
    iget p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/Seat;->intensity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
