.class public Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;
.super Ljava/lang/Object;
.source "NaviStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private naviStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->naviStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNaviStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->naviStatus:I

    return v0
.end method

.method public setNaviStatus(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->naviStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->naviStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
