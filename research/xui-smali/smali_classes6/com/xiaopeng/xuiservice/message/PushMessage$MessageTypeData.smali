.class final Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/message/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageTypeData"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field messageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;->messageType:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/message/PushMessage$MessageTypeData;->data:Ljava/lang/String;

    .line 162
    return-void
.end method
