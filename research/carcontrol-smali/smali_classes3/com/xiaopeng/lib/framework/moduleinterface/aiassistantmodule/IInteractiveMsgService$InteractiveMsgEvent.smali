.class public Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$InteractiveMsgEvent;
.super Ljava/lang/Object;
.source "IInteractiveMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InteractiveMsgEvent"
.end annotation


# instance fields
.field public final msg:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsgService$InteractiveMsgEvent;->msg:Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/IInteractiveMsg;

    return-void
.end method
