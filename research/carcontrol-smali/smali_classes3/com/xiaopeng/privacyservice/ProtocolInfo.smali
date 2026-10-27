.class public Lcom/xiaopeng/privacyservice/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/privacyservice/ProtocolInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/privacyservice/CheckTip;",
            ">;"
        }
    .end annotation
.end field

.field private negativeBtnText:Ljava/lang/String;

.field private positiveBtnText:Ljava/lang/String;

.field private showCheckBox:Z

.field private title:Ljava/lang/String;

.field private type:I

.field private uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/privacyservice/ProtocolInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/privacyservice/ProtocolInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uuid:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->title:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->url:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :try_start_0
    const-class v0, Lcom/xiaopeng/privacyservice/ProtocolInfo;

    invoke-static {p1, v0}, Lcom/xiaopeng/privacyservice/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/privacyservice/ProtocolInfo;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uuid:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->type:I

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->title:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->url:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->positiveBtnText:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->negativeBtnText:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->isShowCheckBox()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->showCheckBox:Z

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getCheckTips()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->checkTips:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;->getUiStyle()Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/privacyservice/CheckTip;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->checkTips:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayWindowArea()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->getAreaType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayWindowScreenId()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->getScreenId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->negativeBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->positiveBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->type:I

    return v0
.end method

.method public getUiStyle()Lcom/xiaopeng/privacyservice/DisplayUIStyle;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isShowAsSupperPanel()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->isShowAsSupperPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowCheckBox()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->showCheckBox:Z

    return v0
.end method

.method public setCheckTips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/privacyservice/CheckTip;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->checkTips:Ljava/util/List;

    return-void
.end method

.method public setNegativeBtnText(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->negativeBtnText:Ljava/lang/String;

    return-void
.end method

.method public setPositiveBtnText(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->positiveBtnText:Ljava/lang/String;

    return-void
.end method

.method public setShowCheckBox(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->showCheckBox:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->type:I

    return-void
.end method

.method public setUiStyle(Lcom/xiaopeng/privacyservice/DisplayUIStyle;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uiStyle:Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/ProtocolInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 163
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/privacyservice/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
