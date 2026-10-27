.class public Lcom/loostone/libserver/version1/entity/request/machine/Cards;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private pcmInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/request/machine/PcmInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/Cards;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPcmInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/request/machine/PcmInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/Cards;->pcmInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/Cards;->id:Ljava/lang/String;

    return-void
.end method

.method public setPcmInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/request/machine/PcmInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/Cards;->pcmInfoList:Ljava/util/List;

    return-void
.end method
