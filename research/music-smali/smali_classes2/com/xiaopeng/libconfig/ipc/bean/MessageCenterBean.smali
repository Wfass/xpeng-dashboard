.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;
.super Ljava/lang/Object;
.source "MessageCenterBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;
    }
.end annotation


# static fields
.field public static final CONTENT_POSITION_NOTIFY:I = 0x2

.field public static final CONTENT_POSITION_NOTIFY_BOX:I = 0x1

.field public static final OPPORTUNITY_GETOFF_SCENE:I = 0x4

.field public static final OPPORTUNITY_GETON_MOMENT:I = 0x3

.field public static final OPPORTUNITY_GETON_SCENE:I = 0x1

.field public static final OPPORTUNITY_OTHER:I = 0x0

.field public static final OPPORTUNITY_RUNNING_SCENE:I = 0x2

.field public static final OPSITION_ACCOUNT:I = 0x9

.field public static final OPSITION_AI:I = 0x1

.field public static final OPSITION_AIOT_SERVICE:I = 0x36

.field public static final OPSITION_APPSTORE:I = 0x31

.field public static final OPSITION_AUTO_SHOW:I = 0x41

.field public static final OPSITION_CAR_CONTROL:I = 0x12

.field public static final OPSITION_CHARGE:I = 0x5

.field public static final OPSITION_CONFIGURE:I = 0xc

.field public static final OPSITION_DC:I = 0xe

.field public static final OPSITION_DIAGNOSTIC:I = 0x14

.field public static final OPSITION_MUSIC:I = 0x10

.field public static final OPSITION_NAV:I = 0x2

.field public static final OPSITION_OTA:I = 0xb

.field public static final OPSITION_PRIVACY_SERVICE:I = 0x11

.field public static final OPSITION_RESOURCE_CENTER:I = 0xf

.field public static final OPSITION_SETTINGS:I = 0x33

.field public static final OPSITION_SPEECH:I = 0x15

.field public static final OPSITION_SR_HDPKMAP:I = 0x13

.field public static final OPSITION_WASH:I = 0x3

.field public static final OPSITION_XUI_SERVICE:I = 0x38

.field public static final TYPE_ACC:I = 0xc

.field public static final TYPE_AUDIOBOOKS:I = 0x3

.field public static final TYPE_BIRTHDAY:I = 0xb

.field public static final TYPE_EASTER_EGG:I = 0x64

.field public static final TYPE_HAZE:I = 0x14

.field public static final TYPE_HEAVY_FOG:I = 0x13

.field public static final TYPE_HEAVY_RAINS:I = 0x12

.field public static final TYPE_HEAVY_SNOWFALL:I = 0x11

.field public static final TYPE_MAP:I = 0xa

.field public static final TYPE_MAP_PARK:I = 0xe

.field public static final TYPE_MAP_PATH:I = 0xd

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_MUSIC_VIP:I = 0x16

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_OTA_FAILED:I = 0x7

.field public static final TYPE_OVERTIME:I = 0xf

.field public static final TYPE_PATH_SELECT:I = 0x10

.field public static final TYPE_PM_25:I = 0x9

.field public static final TYPE_RAINS:I = 0x15

.field public static final TYPE_RECHARGE:I = 0x4

.field public static final TYPE_RECHARGE_FULL:I = 0x8

.field public static final TYPE_SUCCESS:I = 0x6

.field public static final TYPE_WELCOME:I = 0x5


# instance fields
.field private bizType:I

.field private carState:I

.field private content:Ljava/lang/String;

.field private contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

.field private messageId:Ljava/lang/String;

.field private messageType:I

.field private packName:Ljava/lang/String;

.field private priority:I

.field private read_state:I

.field private scene:I

.field private ts:J

.field private type:I

.field private uid:I

.field private validEndTs:J

.field private validStartTs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;)Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;
    .locals 5

    .line 506
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;-><init>()V

    .line 507
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setMessageId(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 509
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidStartTs(J)V

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    .line 510
    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidEndTs(J)V

    const/16 v3, 0x65

    .line 511
    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setMessageType(I)V

    const/4 v3, 0x1

    .line 512
    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setType(I)V

    .line 513
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setTs(J)V

    .line 514
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setBizType(I)V

    .line 515
    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setPriority(I)V

    .line 517
    new-instance p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    invoke-direct {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;-><init>()V

    .line 518
    invoke-virtual {p0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setType(I)V

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0, v1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setOpportunity(I)V

    .line 520
    invoke-virtual {p0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setPosition(I)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setContent(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;)V

    .line 522
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setContentObject(Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;)V

    return-object v0
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->bizType:I

    return v0
.end method

.method public getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;",
            ">;"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarState()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->carState:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->getContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentObject()Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageType:I

    return v0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->packName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->priority:I

    return v0
.end method

.method public getRead_state()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->read_state:I

    return v0
.end method

.method public getScene()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->scene:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->ts:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->uid:I

    return v0
.end method

.method public getValidEndTs()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validEndTs:J

    return-wide v0
.end method

.method public getValidStartTs()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validStartTs:J

    return-wide v0
.end method

.method public setBizType(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->bizType:I

    return-void
.end method

.method public setCarState(I)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->carState:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentObject(Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageType:I

    return-void
.end method

.method public setPackName(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->packName:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->priority:I

    return-void
.end method

.method public setRead_state(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->read_state:I

    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->scene:I

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->ts:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->uid:I

    return-void
.end method

.method public setValidEndTs(J)V
    .locals 0

    .line 322
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validEndTs:J

    return-void
.end method

.method public setValidStartTs(J)V
    .locals 0

    .line 314
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validStartTs:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageCenterBean{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
