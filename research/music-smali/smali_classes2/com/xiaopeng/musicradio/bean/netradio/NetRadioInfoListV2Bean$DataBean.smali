.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;
.super Ljava/lang/Object;
.source "NetRadioInfoListV2Bean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mLocalList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvinceList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provinceList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmLocalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->mLocalList:Ljava/util/List;

    return-object v0
.end method

.method public getmProvinceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->mProvinceList:Ljava/util/List;

    return-object v0
.end method

.method public setmLocalList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->mLocalList:Ljava/util/List;

    return-void
.end method

.method public setmProvinceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean$DataBean;->mProvinceList:Ljava/util/List;

    return-void
.end method
