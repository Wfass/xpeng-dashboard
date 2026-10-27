.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;
    }
.end annotation


# static fields
.field public static final COMMING_SOUND_DEFAULT:I = 0x0

.field public static final COMMING_SOUND_NONE:I = 0x2

.field public static final COMMING_SOUND_WARNNING:I = 0x1

.field public static final EXECUTE_AFTER_TTS:I = 0x1

.field public static final EXECUTE_DELAY:I = 0x2

.field public static final EXECUTE_USER:I = 0x0

.field public static final PERMANENT_MSG:I = 0x1

.field public static final SENSING_TYPE_BEHAVIOR:Ljava/lang/String; = "\u884c\u4e3a\u611f\u77e5"

.field public static final SENSING_TYPE_ENTERTAINMENT:Ljava/lang/String; = "\u5a31\u4e50\u611f\u77e5"

.field public static final SENSING_TYPE_LIFE:Ljava/lang/String; = "\u751f\u6d3b\u611f\u77e5"

.field public static final SENSING_TYPE_NATURAL:Ljava/lang/String; = "\u73af\u5883\u611f\u77e5"

.field public static final SENSING_TYPE_ROAD:Ljava/lang/String; = "\u8def\u51b5\u611f\u77e5"

.field public static final SENSING_TYPE_SOCIAL:Ljava/lang/String; = "\u793e\u4ea4\u611f\u77e5"

.field public static final SENSING_TYPE_SYSTEM:Ljava/lang/String; = "\u7cfb\u7edf\u611f\u77e5"


# instance fields
.field private backgroundUrl:Ljava/lang/String;

.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cancelFeedbackSound:Z

.field private comingSoundType:I

.field private conditions:Ljava/lang/String;

.field private executeDelayTime:I

.field private executeType:I

.field private msgClose:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;

.field private msgShow:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;

.field private neverShow:Z

.field private notificationExtras:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;

.field private permanent:I

.field private pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;",
            ">;"
        }
    .end annotation
.end field

.field private sensingType:Ljava/lang/String;

.field private showRules:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;

.field private soundArea:Ljava/lang/String;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tts:Ljava/lang/String;

.field private type:I

.field private validTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    return-void
.end method

.method public static createContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 774
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addButton(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPic(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTitle(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBackgroundUrl()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->backgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getComingSoundType()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->comingSoundType:I

    return v0
.end method

.method public getConditions()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->conditions:Ljava/lang/String;

    return-object v0
.end method

.method public getExecuteDelayTime()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeDelayTime:I

    return v0
.end method

.method public getExecuteType()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeType:I

    return v0
.end method

.method public getMsgClose()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->msgClose:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;

    return-object v0
.end method

.method public getMsgShow()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->msgShow:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;

    return-object v0
.end method

.method public getNotificationExtras()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->notificationExtras:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;

    return-object v0
.end method

.method public getPermanent()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->permanent:I

    return v0
.end method

.method public getPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    return-object v0
.end method

.method public getSensingType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->sensingType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowRules()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->showRules:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;

    return-object v0
.end method

.method public getSoundArea()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->soundArea:Ljava/lang/String;

    return-object v0
.end method

.method public getTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    return-object v0
.end method

.method public getTts()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->tts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->type:I

    return v0
.end method

.method public getValidTime()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->validTime:J

    return-wide v0
.end method

.method public isCancelFeedbackSound()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->cancelFeedbackSound:Z

    return v0
.end method

.method public isNeverShow()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    return v0
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->backgroundUrl:Ljava/lang/String;

    return-void
.end method

.method public setButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->callback:Ljava/lang/String;

    return-void
.end method

.method public setCancelFeedbackSound(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->cancelFeedbackSound:Z

    return-void
.end method

.method public setComingSoundType(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->comingSoundType:I

    return-void
.end method

.method public setConditions(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->conditions:Ljava/lang/String;

    return-void
.end method

.method public setExecuteDelayTime(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeDelayTime:I

    return-void
.end method

.method public setExecuteType(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeType:I

    return-void
.end method

.method public setMsgClose(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->msgClose:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgClose;

    return-void
.end method

.method public setMsgShow(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->msgShow:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgShow;

    return-void
.end method

.method public setNeverShow(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    return-void
.end method

.method public setNotificationExtras(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->notificationExtras:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;

    return-void
.end method

.method public setPermanent(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->permanent:I

    return-void
.end method

.method public setPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    return-void
.end method

.method public setSensingType(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->sensingType:Ljava/lang/String;

    return-void
.end method

.method public setShowRules(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->showRules:Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;

    return-void
.end method

.method public setSoundArea(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->soundArea:Ljava/lang/String;

    return-void
.end method

.method public setTitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    return-void
.end method

.method public setTts(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->tts:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->type:I

    return-void
.end method

.method public setValidTime(J)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->validTime:J

    return-void
.end method
