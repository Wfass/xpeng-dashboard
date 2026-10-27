.class public Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBody:Ljava/lang/String;

.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mMessage:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mBody:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    .locals 1
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "body"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;-><init>()V

    .line 14
    .local v0, "response":Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    iput p0, v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    .line 15
    iput-object p1, v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mMessage:Ljava/lang/String;

    .line 16
    iput-object p2, v0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mBody:Ljava/lang/String;

    .line 17
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 57
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResp{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", body=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 28
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
