.class Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;
.super Lcom/nforetek/bt/aidl/UiCallbackA2dp$Stub;
.source "A2dpControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/a2dp/A2dpControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/a2dp/A2dpControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/a2dp/A2dpControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;->this$0:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-direct {p0}, Lcom/nforetek/bt/aidl/UiCallbackA2dp$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpServiceReady()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;->this$0:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->access$000(Lcom/xiaopeng/btservice/a2dp/A2dpControl;)Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;->onA2dpServiceReady()V

    .line 47
    return-void
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/btservice/a2dp/A2dpControl$1;->this$0:Lcom/xiaopeng/btservice/a2dp/A2dpControl;

    invoke-static {v0}, Lcom/xiaopeng/btservice/a2dp/A2dpControl;->access$000(Lcom/xiaopeng/btservice/a2dp/A2dpControl;)Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 52
    return-void
.end method
