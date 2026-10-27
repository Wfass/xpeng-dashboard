.class public Lcom/xiaopeng/speech/protocol/bean/config/SpeechMainData;
.super Ljava/lang/Object;
.source "SpeechMainData.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private info:Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;

.field private operations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SpeechMainData;->info:Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;

    return-object v0
.end method

.method public getOperations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SpeechMainData;->operations:Ljava/util/Map;

    return-object v0
.end method

.method public setInfo(Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SpeechMainData;->info:Lcom/xiaopeng/speech/protocol/bean/config/OperationInfoBean;

    return-void
.end method

.method public setOperations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SpeechMainData;->operations:Ljava/util/Map;

    return-void
.end method
