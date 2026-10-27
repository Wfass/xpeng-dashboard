.class public Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;
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
    name = "ResServiceBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Ljava/lang/String;

.field private client_data_status:I

.field private content:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private update_time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->id:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->category:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->content:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->create_time:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->update_time:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->client_data_status:I

    .line 174
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getClientStatus()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->client_data_status:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRscCategory()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 212
    nop

    .line 213
    return-void
.end method

.method public setResId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->id:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setRscCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscCategory"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->category:Ljava/lang/String;

    .line 205
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

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->create_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->update_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;->client_data_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
