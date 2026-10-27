.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgClose"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field pack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;->pack:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;->content:Ljava/lang/String;

    return-void
.end method

.method public setPack(Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;->pack:Ljava/lang/String;

    return-void
.end method
