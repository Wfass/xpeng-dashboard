.class public abstract Lcom/xiaopeng/musicradio/logic/BaseInBizMusicLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "BaseInBizMusicLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<In:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "TIn;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;",
            "Lcom/xiaopeng/aicabin/logic/ILogicCallback;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

.method protected doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)",
            "Lcom/xiaopeng/aicabin/DataResp;"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;->doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
