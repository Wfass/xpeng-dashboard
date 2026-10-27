.class Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode$1;
.super Lcom/xiaopeng/speech/protocol/node/dialog/AbsDialogListener;
.source "AutoParkingNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/dialog/AbsDialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/protocol/node/dialog/AbsDialogListener;->onDialogEnd(Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;)V

    .line 93
    iget-object v0, p1, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->reason:Ljava/lang/String;

    const-string v1, "voice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/xiaopeng/speech/protocol/node/dialog/bean/DialogEndReason;->reason:Ljava/lang/String;

    const-string/jumbo v0, "wheel"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;

    const-string v0, ""

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->onExit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
