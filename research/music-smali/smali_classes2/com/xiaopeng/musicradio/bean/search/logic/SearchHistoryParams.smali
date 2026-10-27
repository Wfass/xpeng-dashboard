.class public Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;
.super Ljava/lang/Object;
.source "SearchHistoryParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPT_DELETE_ALL:I = 0x2

.field public static final OPT_INSERT:I = 0x3

.field public static final OPT_QUERY_ALL:I = 0x1


# instance fields
.field private key:Ljava/lang/String;

.field private opt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->opt:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOpt()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->opt:I

    return v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setOpt(I)Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->opt:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchHistoryParams{opt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->opt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->opt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/search/logic/SearchHistoryParams;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
