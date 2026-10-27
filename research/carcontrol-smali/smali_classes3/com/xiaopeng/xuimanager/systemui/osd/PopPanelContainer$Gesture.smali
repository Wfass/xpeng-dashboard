.class public Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;
.super Ljava/lang/Object;
.source "PopPanelContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gesture"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gestureCode:Ljava/lang/String;

.field private meanSpeedMax:I

.field private meanSpeedMin:I

.field private moveDistanceMax:I

.field private moveDistanceMin:I

.field private moveTimeMax:I

.field private moveTimeMin:I

.field private screenId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->gestureCode:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMin:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMax:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMin:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMax:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMin:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMax:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGestureCode()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->gestureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMeanSpeedMax()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMax:I

    return v0
.end method

.method public getMeanSpeedMin()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMin:I

    return v0
.end method

.method public getMoveDistanceMax()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMax:I

    return v0
.end method

.method public getMoveDistanceMin()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMin:I

    return v0
.end method

.method public getMoveTimeMax()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMax:I

    return v0
.end method

.method public getMoveTimeMin()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMin:I

    return v0
.end method

.method public getScreenId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    return-object v0
.end method

.method public setGestureCode(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->gestureCode:Ljava/lang/String;

    return-void
.end method

.method public setMeanSpeedMax(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMax:I

    return-void
.end method

.method public setMeanSpeedMin(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMin:I

    return-void
.end method

.method public setMoveDistanceMax(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMax:I

    return-void
.end method

.method public setMoveDistanceMin(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMin:I

    return-void
.end method

.method public setMoveTimeMax(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMax:I

    return-void
.end method

.method public setMoveTimeMin(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMin:I

    return-void
.end method

.method public setScreenId(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gesture{gestureCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->gestureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meanSpeedMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meanSpeedMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveTimeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveTimeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveDistanceMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moveDistanceMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMax:I

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

    .line 154
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->gestureCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->screenId:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 156
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->meanSpeedMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveTimeMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer$Gesture;->moveDistanceMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
