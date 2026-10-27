.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;
.super Ljava/lang/Object;
.source "MessageCenterBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field content:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

.field contentStr:Ljava/lang/String;

.field opportunity:I

.field position:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->content:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    return-object v0
.end method

.method public getContentStr()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->contentStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOpportunity()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->opportunity:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 436
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->position:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->type:I

    return v0
.end method

.method public setContent(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->content:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    .line 457
    return-void
.end method

.method public setContentStr(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->contentStr:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setOpportunity(I)V
    .locals 0

    .line 448
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->opportunity:I

    .line 449
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 440
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->position:I

    .line 441
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->type:I

    .line 433
    return-void
.end method
