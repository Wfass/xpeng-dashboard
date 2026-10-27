.class public Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;
.super Ljava/lang/Object;
.source "OsdRegionRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I

.field private regionId:Ljava/lang/String;

.field private screenId:I

.field private windowType:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->regionId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->x:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->y:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minWidth:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minHeight:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxWidth:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxHeight:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->screenId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->windowType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minWidth:I

    return v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->regionId:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->screenId:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->windowType:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->y:I

    return v0
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxWidth:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minWidth:I

    return-void
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->regionId:Ljava/lang/String;

    return-void
.end method

.method public setScreenId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->screenId:I

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->windowType:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->y:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->regionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->minHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->maxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->screenId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdRegionRecord;->windowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
