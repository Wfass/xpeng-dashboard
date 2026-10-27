.class public Lcom/xiaopeng/privacyservice/CheckTip;
.super Ljava/lang/Object;
.source "CheckTip.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/privacyservice/CheckTip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private associatedFileUrl:Ljava/lang/String;

.field private clickable:Z

.field private color:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/privacyservice/CheckTip$1;

    invoke-direct {v0}, Lcom/xiaopeng/privacyservice/CheckTip$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/privacyservice/CheckTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 29
    :try_start_0
    const-class v0, Lcom/xiaopeng/privacyservice/CheckTip;

    invoke-static {p1, v0}, Lcom/xiaopeng/privacyservice/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/privacyservice/CheckTip;

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/CheckTip;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/CheckTip;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->color:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/CheckTip;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->clickable:Z

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/privacyservice/CheckTip;->getAssociatedFileUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/privacyservice/CheckTip;->associatedFileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
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

.method public getAssociatedFileUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->associatedFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/privacyservice/CheckTip;->clickable:Z

    return v0
.end method

.method public setAssociatedFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/CheckTip;->associatedFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/xiaopeng/privacyservice/CheckTip;->clickable:Z

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/CheckTip;->color:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/CheckTip;->text:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/privacyservice/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
