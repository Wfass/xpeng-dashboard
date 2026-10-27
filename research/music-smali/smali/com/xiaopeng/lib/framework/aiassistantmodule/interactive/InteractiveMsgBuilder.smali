.class public Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;
.super Ljava/lang/Object;
.source "InteractiveMsgBuilder.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgBuilder;


# instance fields
.field private mData:Ljava/lang/String;

.field private mMsgId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;
    .locals 3

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;

    iget v1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;->mMsgId:I

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;->mData:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsg;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public data(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public msgId(I)Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgBuilder;
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgBuilder;->mMsgId:I

    return-object p0
.end method
