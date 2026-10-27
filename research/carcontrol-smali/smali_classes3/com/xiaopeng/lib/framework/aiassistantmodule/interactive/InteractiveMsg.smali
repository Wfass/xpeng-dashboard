.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;
.super Ljava/lang/Object;
.source "InteractiveMsg.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;


# instance fields
.field private mData:Ljava/lang/String;

.field private mMsgId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->mMsgId:I

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->mData:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/os/Bundle;)Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;
    .locals 2

    const-string v0, "msgId"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "data"

    .line 33
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance v1, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;

    invoke-direct {v1, v0, p0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;-><init>(ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;->mMsgId:I

    return v0
.end method
