.class public Lcom/xiaopeng/xuimanager/contextinfo/Sapa;
.super Ljava/lang/Object;
.source "Sapa.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Sapa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSapaShow:Z

.field private sapaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Sapa$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->sapaInfo:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->isSapaShow:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsSapaShow()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->isSapaShow:Z

    return v0
.end method

.method public getSapaInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->sapaInfo:Ljava/util/List;

    return-object v0
.end method

.method public setIsSapaShow(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->isSapaShow:Z

    return-void
.end method

.method public setSapaInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/SapaInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->sapaInfo:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->sapaInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->isSapaShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
