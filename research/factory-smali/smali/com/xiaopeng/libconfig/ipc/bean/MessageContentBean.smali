.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;,
        Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
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

.field private neverShow:Z

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

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    return-void
.end method

.method public static createContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1

    .line 471
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addButton(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1
    .param p1, "button"    # Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    return-object p0
.end method

.method public addPic(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1
    .param p1, "pic"    # Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public addTitle(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    return-object p0
.end method

.method public getBackgroundUrl()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->backgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButton(I)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1
    .param p1, "index"    # I

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->getButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getComingSoundType()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->comingSoundType:I

    return v0
.end method

.method public getConditions()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->conditions:Ljava/lang/String;

    return-object v0
.end method

.method public getExecuteDelayTime()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeDelayTime:I

    return v0
.end method

.method public getExecuteType()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeType:I

    return v0
.end method

.method public getPermanent()I
    .locals 1

    .line 180
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

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    return-object v0
.end method

.method public getSensingType()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->sensingType:Ljava/lang/String;

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

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    return-object v0
.end method

.method public getTts()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->tts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->type:I

    return v0
.end method

.method public getValidTime()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->validTime:J

    return-wide v0
.end method

.method public isCancelFeedbackSound()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->cancelFeedbackSound:Z

    return v0
.end method

.method public isNeverShow()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    return v0
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundUrl"    # Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->backgroundUrl:Ljava/lang/String;

    .line 273
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

    .line 168
    .local p1, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;>;"
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->buttons:Ljava/util/List;

    .line 169
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->callback:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCancelFeedbackSound(Z)V
    .locals 0
    .param p1, "cancelFeedbackSound"    # Z

    .line 248
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->cancelFeedbackSound:Z

    .line 249
    return-void
.end method

.method public setComingSoundType(I)V
    .locals 0
    .param p1, "comingSoundType"    # I

    .line 224
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->comingSoundType:I

    .line 225
    return-void
.end method

.method public setConditions(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditions"    # Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->conditions:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setExecuteDelayTime(I)V
    .locals 0
    .param p1, "executeDelayTime"    # I

    .line 240
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeDelayTime:I

    .line 241
    return-void
.end method

.method public setExecuteType(I)V
    .locals 0
    .param p1, "executeType"    # I

    .line 232
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->executeType:I

    .line 233
    return-void
.end method

.method public setNeverShow(Z)V
    .locals 0
    .param p1, "neverShow"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->neverShow:Z

    .line 257
    return-void
.end method

.method public setPermanent(I)V
    .locals 0
    .param p1, "permanent"    # I

    .line 184
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->permanent:I

    .line 185
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

    .line 176
    .local p1, "pics":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgPic;>;"
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->pics:Ljava/util/List;

    .line 177
    return-void
.end method

.method public setSensingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sensingType"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->sensingType:Ljava/lang/String;

    .line 217
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

    .line 160
    .local p1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->titles:Ljava/util/List;

    .line 161
    return-void
.end method

.method public setTts(Ljava/lang/String;)V
    .locals 0
    .param p1, "tts"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->tts:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 152
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->type:I

    .line 153
    return-void
.end method

.method public setValidTime(J)V
    .locals 0
    .param p1, "validTime"    # J

    .line 200
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->validTime:J

    .line 201
    return-void
.end method
