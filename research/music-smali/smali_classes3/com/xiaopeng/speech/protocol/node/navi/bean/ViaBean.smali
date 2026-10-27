.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;
.super Ljava/lang/Object;
.source "ViaBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final WAYPOINT_TYPE_CHARGING_STATION:I = 0x1

.field public static final WAYPOINT_TYPE_EXTRA:I = 0x0

.field public static final WAYPOINT_TYPE_USER_POI:I = 0x2

.field public static final WAYPOINT_TYPE_USER_ROAD:I = 0x3

.field protected static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pointInfo:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field private viaType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->pointInfo:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->viaType:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->viaType:I

    return-void
.end method

.method public a(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->pointInfo:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViaBean{pointInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->pointInfo:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->viaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->pointInfo:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->viaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
