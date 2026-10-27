.class public Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;
.super Ljava/lang/Object;
.source "ResServiceResp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResServiceContent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private RscDescription:Ljava/lang/String;

.field private RscFile:Ljava/lang/String;

.field private RscImage:Ljava/lang/String;

.field private RscName:Ljava/lang/String;

.field private RscPrice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 228
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscFile:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscImage:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscDescription:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscPrice:Ljava/lang/String;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$1;

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getRscIcon()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscImage:Ljava/lang/String;

    return-object v0
.end method

.method public getRscName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscDescription:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscFile:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscPrice:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setRscIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscIcon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscIcon"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscImage:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setRscName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscName"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscName:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;->RscPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    return-void
.end method
