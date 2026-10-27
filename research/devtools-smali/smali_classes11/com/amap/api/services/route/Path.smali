.class public Lcom/amap/api/services/route/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/Path;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:J

.field private eh:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/amap/api/services/route/Path$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/Path$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/Path;->eh:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/services/route/Path;->b:J

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 64
    iget p2, p0, Lcom/amap/api/services/route/Path;->eh:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    iget-wide v0, p0, Lcom/amap/api/services/route/Path;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    return-void
.end method
