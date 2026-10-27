.class Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;
.super Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;
.source "XHfpNFManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsPhoneControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpAudioStateChanged(Ljava/lang/String;II)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-static {v1, p2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;I)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-static {v2, p3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpAudioStateChanged(Ljava/lang/String;III)V

    .line 272
    :cond_0
    return-void
.end method

.method public onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v1, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V

    .line 279
    :cond_0
    return-void
.end method

.method public onHfpServiceReady()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->isNFReady:Z

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 262
    .local v0, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-static {v2, p2}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;

    invoke-static {v3, p3}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/hfp/XHfpNFManagerImpl;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onHfpStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 265
    .end local v0    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method
