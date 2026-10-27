.class public Lcom/xiaopeng/logictree/bean/LogicInterActiveData;
.super Ljava/lang/Object;
.source "LogicInterActiveData.java"


# instance fields
.field private final mMsgId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgId"
    .end annotation
.end field

.field private final mOption:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "option"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/logictree/bean/LogicInterActiveData;->mMsgId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/logictree/bean/LogicInterActiveData;->mOption:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/logictree/bean/LogicInterActiveData;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/logictree/bean/LogicInterActiveData;->mOption:Ljava/lang/String;

    return-object v0
.end method
