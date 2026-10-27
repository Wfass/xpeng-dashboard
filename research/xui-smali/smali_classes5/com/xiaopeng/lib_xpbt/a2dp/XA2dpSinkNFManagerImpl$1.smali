.class Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;
.super Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;
.source "XA2dpSinkNFManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsA2dpControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpServiceReady()V
    .locals 2

    .line 191
    const-string v0, "onA2dpServiceReady"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->access$102(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;Z)Z

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;)V

    .line 194
    return-void
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    invoke-static {v0, p2}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;I)I

    move-result v0

    .line 180
    .local v0, "preCoverState":I
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    invoke-static {v1, p3}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;I)I

    move-result v1

    .line 181
    .local v1, "newCoverState":I
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 183
    .local v2, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v2, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onA2dpStateChanged address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " preCoverState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newCoverState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkNFManagerImpl;->xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;->onA2dpStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 187
    .end local v2    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method
