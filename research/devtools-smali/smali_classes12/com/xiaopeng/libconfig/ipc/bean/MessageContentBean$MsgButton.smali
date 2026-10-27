.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgButton"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field name:Ljava/lang/String;

.field notResponseWord:Ljava/lang/String;

.field pack:Ljava/lang/String;

.field responseGuideTTS:Ljava/lang/String;

.field responseTTS:Ljava/lang/String;

.field responseWord:Ljava/lang/String;

.field speechResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    .line 332
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    .line 345
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;-><init>()V

    .line 346
    iput-object p0, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    .line 347
    iput-object p1, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    .line 348
    iput-object p2, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    .line 349
    iput-boolean p3, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    .line 350
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotResponseWord()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->notResponseWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseGuideTTS()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseGuideTTS:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTTS()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseTTS:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseWord()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseWord:Ljava/lang/String;

    return-object v0
.end method

.method public isSpeechResponse()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setNotResponseWord(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->notResponseWord:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setPack(Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setResponseGuideTTS(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseGuideTTS:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setResponseTTS(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseTTS:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setResponseWord(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseWord:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setSpeechResponse(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    .line 383
    return-void
.end method
