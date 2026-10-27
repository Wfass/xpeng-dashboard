.class public Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;
.super Ljava/lang/Object;
.source "DockItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/dock/DockItem$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DockItem"

.field public static final TYPE_APP:I = 0x3e8

.field public static final TYPE_SHORTCUT:I = 0xbb8

.field public static final TYPE_WIDGET:I = 0x7d0


# instance fields
.field private activityName:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private canDelete:Z

.field private cellX:I

.field private configurable:Z

.field private dayIcon:Landroid/graphics/Bitmap;

.field private extras:Landroid/os/Bundle;

.field private icon:Landroid/graphics/Bitmap;

.field private iconIdentifier:Ljava/lang/String;

.field private id:I

.field private intent:Landroid/content/Intent;

.field private itemType:I

.field private pageUri:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private spanX:I

.field private swapLimit:I

.field private title:Ljava/lang/String;

.field private titleIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->id:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->itemType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->cellX:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->spanX:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->appId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->title:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pkgName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->canDelete:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->swapLimit:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->iconIdentifier:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->activityName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pageUri:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->configurable:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->titleIdentifier:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->dayIcon:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->extras:Landroid/os/Bundle;

    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCellX()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->cellX:I

    return v0
.end method

.method public getDayIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->dayIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconIdentifier()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->iconIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->id:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->itemType:I

    return v0
.end method

.method public getPageUri()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->spanX:I

    return v0
.end method

.method public getSwapLimit()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->swapLimit:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleIdentifier()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->titleIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public isCanDelete()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->canDelete:Z

    return v0
.end method

.method public isConfigurable()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->configurable:Z

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->canDelete:Z

    return-void
.end method

.method public setCellX(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->cellX:I

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->configurable:Z

    return-void
.end method

.method public setDayIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->dayIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->iconIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->id:I

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->itemType:I

    return-void
.end method

.method public setPageUri(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pageUri:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSpanX(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->spanX:I

    return-void
.end method

.method public setSwapLimit(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->swapLimit:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->titleIdentifier:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DockItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", canDelete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->canDelete:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", swapLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->swapLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", iconIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->iconIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", activityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pageUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pageUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configurable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->configurable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 90
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->itemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->cellX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->spanX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->canDelete:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->swapLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->iconIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->pageUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->configurable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->titleIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->dayIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->dayIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 126
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return-void
.end method
