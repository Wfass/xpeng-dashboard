.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagGroup;
.super Ljava/lang/Object;
.source "NetRadioTagGroup.java"


# instance fields
.field private description:Ljava/lang/String;

.field private labelInfoBos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelInfoBos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagGroup;->labelInfoBos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagGroup;->description:Ljava/lang/String;

    return-void
.end method

.method public setLabelInfoBos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagGroup;->labelInfoBos:Ljava/util/ArrayList;

    return-void
.end method
