.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgPic"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field pack:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;
    .locals 1

    .line 735
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;-><init>()V

    .line 736
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->setUrl(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->setPack(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0, p2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->setContent(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->pack:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->content:Ljava/lang/String;

    return-void
.end method

.method public setPack(Ljava/lang/String;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->pack:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;->url:Ljava/lang/String;

    return-void
.end method
