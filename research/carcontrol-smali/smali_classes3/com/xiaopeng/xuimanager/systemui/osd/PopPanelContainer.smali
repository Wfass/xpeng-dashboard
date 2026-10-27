.class public Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;
.super Ljava/lang/Object;
.source "PopPanelContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private minSlideLength:I

.field private slideAnimatorDuration:I

.field private windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->windowType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->minSlideLength:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->slideAnimatorDuration:I

    .line 74
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGestures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    return-object v0
.end method

.method public getMinSlideLength()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->minSlideLength:I

    return v0
.end method

.method public getSlideAnimatorDuration()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->slideAnimatorDuration:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->windowType:I

    return v0
.end method

.method public setGestures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    return-void
.end method

.method public setMinSlideLength(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->minSlideLength:I

    return-void
.end method

.method public setSlideAnimatorDuration(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->slideAnimatorDuration:I

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->windowType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopPanelContainer{, windowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->windowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSlideLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->minSlideLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slideAnimatorDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->slideAnimatorDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gestures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 96
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->windowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->minSlideLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->slideAnimatorDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->gestures:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
