.class public Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
.super Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
.source "SimpleRequest.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mResType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;-><init>(I)V

    .line 18
    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mResType:I

    .line 19
    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mKey:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mResType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleRequest{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mResType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mResType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
