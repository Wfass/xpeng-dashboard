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

.field public static final OPSITION_CHARGE:I = 0x5

.field public static final OPSITION_CONFIGURE:I = 0xc

.field public static final OPSITION_DC:I = 0xe

.field public static final OPSITION_MUSIC:I = 0x10

.field public static final OPSITION_NAV:I = 0x2

.field public static final OPSITION_OTA:I = 0xb

.field public static final OPSITION_RESOURCE_CENTER:I = 0xf

.field public static final OPSITION_WASH:I = 0x3

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
    .locals 6
    .param p0, "bizType"    # I
    .param p1, "messageContentBean"    # Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    .line 476
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;-><init>()V

    .line 477
    .local v0, "bean":Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setMessageId(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 479
    .local v1, "currentTime":J
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidStartTs(J)V

    .line 480
    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidEndTs(J)V

    .line 481
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setMessageType(I)V

    .line 482
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setType(I)V

    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setTs(J)V

    .line 484
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setBizType(I)V

    .line 485
    invoke-virtual {v0, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setPriority(I)V

    .line 487
    new-instance v4, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    invoke-direct {v4}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;-><init>()V

    .line 488
    .local v4, "content":Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;
    invoke-virtual {v4, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setType(I)V

    .line 489
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setOpportunity(I)V

    .line 490
    invoke-virtual {v4, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setPosition(I)V

    .line 491
    invoke-virtual {v4, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->setContent(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;)V

    .line 492
    invoke-virtual {v0, v4}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setContentObject(Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;)V

    .line 494
    return-object v0
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->bizType:I

    return v0
.end method

.method public getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1
    .param p1, "index"    # I

    .line 388
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    move-result-object v0

    return-object v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarState()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->carState:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBean()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    invoke-virtual {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;->getContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentObject()Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageType:I

    return v0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->packName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->priority:I

    return v0
.end method

.method public getRead_state()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->read_state:I

    return v0
.end method

.method public getScene()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->scene:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 296
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->ts:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->uid:I

    return v0
.end method

.method public getValidEndTs()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validEndTs:J

    return-wide v0
.end method

.method public getValidStartTs()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validStartTs:J

    return-wide v0
.end method

.method public setBizType(I)V
    .locals 0
    .param p1, "bizType"    # I

    .line 308
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->bizType:I

    .line 309
    return-void
.end method

.method public setCarState(I)V
    .locals 0
    .param p1, "carState"    # I

    .line 348
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->carState:I

    .line 349
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 364
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->content:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setContentObject(Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;)V
    .locals 0
    .param p1, "contentObject"    # Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->contentObject:Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean$Content;

    .line 373
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageId:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .line 268
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->messageType:I

    .line 269
    return-void
.end method

.method public setPackName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packName"    # Ljava/lang/String;

    .line 340
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->packName:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 324
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->priority:I

    .line 325
    return-void
.end method

.method public setRead_state(I)V
    .locals 0
    .param p1, "read_state"    # I

    .line 356
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->read_state:I

    .line 357
    return-void
.end method

.method public setScene(I)V
    .locals 0
    .param p1, "scene"    # I

    .line 316
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->scene:I

    .line 317
    return-void
.end method

.method public setTs(J)V
    .locals 0
    .param p1, "ts"    # J

    .line 300
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->ts:J

    .line 301
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 276
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->type:I

    .line 277
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 332
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->uid:I

    .line 333
    return-void
.end method

.method public setValidEndTs(J)V
    .locals 0
    .param p1, "validEndTs"    # J

    .line 292
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validEndTs:J

    .line 293
    return-void
.end method

.method public setValidStartTs(J)V
    .locals 0
    .param p1, "validStartTs"    # J

    .line 284
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->validStartTs:J

    .line 285
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 499
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
