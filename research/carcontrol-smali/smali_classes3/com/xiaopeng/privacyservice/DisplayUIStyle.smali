.class public Lcom/xiaopeng/privacyservice/DisplayUIStyle;
.super Ljava/lang/Object;
.source "DisplayUIStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/privacyservice/DisplayUIStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areaType:Ljava/lang/String;

.field private darkMode:Z

.field private screenId:I

.field private showAsSupperPanel:Z

.field private showCloseBtn:Z

.field private supportCancelDialogWhenTouchOutside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/privacyservice/DisplayUIStyle$1;

    invoke-direct {v0}, Lcom/xiaopeng/privacyservice/DisplayUIStyle$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showCloseBtn:Z

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->supportCancelDialogWhenTouchOutside:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showCloseBtn:Z

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->supportCancelDialogWhenTouchOutside:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 34
    :try_start_0
    const-class v0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    invoke-static {p1, v0}, Lcom/xiaopeng/privacyservice/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/privacyservice/DisplayUIStyle;

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->isShowCloseBtn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showCloseBtn:Z

    .line 37
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->isDarkMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->darkMode:Z

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->isShowAsSupperPanel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showAsSupperPanel:Z

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->getScreenId()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->screenId:I

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->getAreaType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->areaType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->isSupportCancelDialogWhenTouchOutside()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->supportCancelDialogWhenTouchOutside:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
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

.method public getAreaType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->areaType:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->screenId:I

    return v0
.end method

.method public isDarkMode()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->darkMode:Z

    return v0
.end method

.method public isShowAsSupperPanel()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showAsSupperPanel:Z

    return v0
.end method

.method public isShowCloseBtn()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showCloseBtn:Z

    return v0
.end method

.method public isSupportCancelDialogWhenTouchOutside()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->supportCancelDialogWhenTouchOutside:Z

    return v0
.end method

.method public setAreaType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->areaType:Ljava/lang/String;

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->darkMode:Z

    return-void
.end method

.method public setScreenId(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->screenId:I

    return-void
.end method

.method public setShowAsSupperPanel(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showAsSupperPanel:Z

    return-void
.end method

.method public setShowCloseBtn(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->showCloseBtn:Z

    return-void
.end method

.method public setSupportCancelDialogWhenTouchOutside(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/DisplayUIStyle;->supportCancelDialogWhenTouchOutside:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/privacyservice/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
