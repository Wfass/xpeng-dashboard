.class public Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;
.super Ljava/lang/Object;
.source "PopPanelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private diagonalMoveWidth:I

.field private maxHeight:I

.field private maxSlideLength:I

.field private maxWidth:I

.field private slideAnimatorDuration:I

.field private windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxWidth:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxHeight:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->windowType:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxSlideLength:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->slideAnimatorDuration:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->diagonalMoveWidth:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDiagonalMoveWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->diagonalMoveWidth:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxHeight:I

    return v0
.end method

.method public getMaxSlideLength()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxSlideLength:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxWidth:I

    return v0
.end method

.method public getSlideAnimatorDuration()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->slideAnimatorDuration:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->windowType:I

    return v0
.end method

.method public setDiagonalMoveWidth(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->diagonalMoveWidth:I

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxHeight:I

    return-void
.end method

.method public setMaxSlideLength(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxSlideLength:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxWidth:I

    return-void
.end method

.method public setSlideAnimatorDuration(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->slideAnimatorDuration:I

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->windowType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoppanelRecord{maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->windowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSlideLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxSlideLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diagonalMoveWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->diagonalMoveWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slideAnimatorDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->slideAnimatorDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 124
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->windowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->maxSlideLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->slideAnimatorDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->diagonalMoveWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
