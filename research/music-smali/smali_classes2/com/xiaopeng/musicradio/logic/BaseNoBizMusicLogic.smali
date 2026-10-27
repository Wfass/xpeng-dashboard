.class public Lcom/xiaopeng/musicradio/logic/BaseNoBizMusicLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "BaseNoBizMusicLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;->doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

.method protected doSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;->doSync()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method
