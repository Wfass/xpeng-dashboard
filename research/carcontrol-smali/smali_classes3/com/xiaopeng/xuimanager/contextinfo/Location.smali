.class public Lcom/xiaopeng/xuimanager/contextinfo/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Location;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carDir:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Location$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Location$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Location;->carDir:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCarDir()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Location;->carDir:I

    return v0
.end method

.method public setCarDir(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Location;->carDir:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 57
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Location;->carDir:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
