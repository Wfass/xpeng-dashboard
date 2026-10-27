.class public Lbpa;
.super Ljava/lang/Object;
.source "CommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpa$a;
    }
.end annotation


# instance fields
.field private a:Lbox;

.field private b:Lboy;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lboz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpa;->c:Ljava/util/List;

    const-string v0, "CommandManager"

    const-string v1, "CommandManager: init======"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a()Lbpa;
    .locals 1

    .line 89
    sget-object v0, Lbpa$a;->a:Lbpa;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lbpa;->a:Lbox;

    const-string v1, "triggerCommand: "

    const-string v2, "CommandManager"

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getcommand = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbpa;->a:Lbox;

    invoke-virtual {v3}, Lbox;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lbpa;->a:Lbox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbox;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lbpa;->a:Lbox;

    invoke-virtual {p1}, Lbox;->doCommand()V

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lbpa;->a:Lbox;

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lbpa;->b:Lboy;

    const-string v1, "triggerCommand: "

    const-string v2, "CommandManager"

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbpa;->b:Lboy;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getcommand = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbpa;->b:Lboy;

    invoke-virtual {v3}, Lboy;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lbpa;->b:Lboy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lboy;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lbpa;->b:Lboy;

    .line 132
    new-instance v0, Lbpa$1;

    invoke-direct {v0, p0, p1}, Lbpa$1;-><init>(Lbpa;Lboy;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lbpa;->b:Lboy;

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v1, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lboz;

    .line 147
    invoke-virtual {v2}, Lboz;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerQueryCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommandManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v2}, Lboz;->doCommand()V

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboz;

    .line 155
    iget-object v1, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lbox;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lbpa;->a:Lbox;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbox;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lboy;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lbpa;->b:Lboy;

    return-void
.end method

.method public a(Lboz;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addQueryCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lboz;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommandManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onAppCreateEnd(Lcom/xiaopeng/musicradio/event/common/CommonEvent$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppCreateEnd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QueryHistoryEmptyCommand"

    .line 327
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "QueryUsbStateCommand"

    .line 328
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "CanChangePlayModeCommand"

    .line 329
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "QueryPlayingTypeCommand"

    .line 330
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "QueryPlayModeCommand"

    .line 331
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onAppInitFinish(Lcom/xiaopeng/musicradio/event/common/CommonEvent$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppInitFinish: ============"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FmLocalOnCommand"

    .line 289
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "FmNetworkOnCommand"

    .line 290
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayBtCommand"

    .line 292
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "QueryBtConnectCommand"

    .line 293
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "PlayHistroyCommand"

    .line 294
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayFmNameCommand"

    .line 296
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayFmChannelCommand"

    .line 297
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayMusicDailyCommand"

    .line 298
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "MusicListPlayCommand"

    .line 299
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayProgramCommand"

    .line 300
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayProgramNewsCommand"

    .line 301
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayCollectCommand"

    .line 303
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayCollectFmCommand"

    .line 304
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayPersonalCommand"

    .line 305
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PushCommand"

    .line 306
    invoke-direct {p0, p1}, Lbpa;->b(Ljava/lang/String;)V

    const-string p1, "QuerySupportDolbyCommand"

    .line 307
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioTypeInitFinish(Lcom/xiaopeng/musicradio/event/common/CommonEvent$i;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudioTypeInitFinish: ============"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "QueryCollectEmptyCommand"

    .line 253
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "MediaCenterControlCommand"

    if-ne p1, v0, :cond_1

    const-string p1, "PlayFmNameCommand"

    .line 256
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayFmChannelCommand"

    .line 257
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayMusicDailyCommand"

    .line 258
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "MusicListPlayCommand"

    .line 259
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayProgramCommand"

    .line 260
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayProgramNewsCommand"

    .line 261
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayCollectCommand"

    .line 262
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayCollectFmCommand"

    .line 263
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayHistroyCommand"

    .line 264
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayBtCommand"

    .line 265
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PushCommand"

    .line 266
    invoke-direct {p0, p1}, Lbpa;->b(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayPersonalCommand"

    .line 268
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 270
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 271
    invoke-direct {p0, v1}, Lbpa;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onBtConnect(Lasa$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBtConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QueryBtConnectCommand"

    .line 313
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "PlayBtCommand"

    .line 314
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onBtHpfConnect(Lasa$c;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBtHpfConnect: ======== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$c;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QueryBtConnectCommand"

    .line 320
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "PlayBtCommand"

    .line 321
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginInitFinish(Lasj$j;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoginInitFinish: size ========= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbpa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "QueryLoginCommand"

    .line 244
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "QueryAuthCommand"

    .line 245
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    const-string p1, "QueryXimalayaLoginCommand"

    .line 246
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onLoveNetRadioLoaded(Lasf$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CommandManager"

    const-string v0, "onLoveNetRadioLoaded: ===== "

    .line 237
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PlayCollectFmCommand"

    .line 238
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoveNetRadioRefresh(Lasf$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QueryCollectEmptyCommand"

    .line 277
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onMusicListRefresh(Lase$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QueryCollectEmptyCommand"

    .line 282
    invoke-direct {p0, p1}, Lbpa;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "CommandManager"

    const-string v1, "onPlayStateChange: "

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const-string v1, "RandomLoopCommand"

    const-string v2, "ListLoopCommand"

    const-string v3, "QueryHasQualityCommand"

    const-string v4, "QueryCanCollectCommand"

    const-string v5, "QueryPlayingInfoCommand"

    const-string v6, "QueryPlayingTitleCommand"

    const-string v7, "QueryPlayingTypeCommand"

    const-string v8, "QueryPlayingCommand"

    const/4 v9, 0x2

    const-string v10, "QueryPlayingArtistCommand"

    if-eq v0, v9, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v11, 0x3

    if-ne v0, v11, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const-string v0, "StopCommand"

    if-ne p1, v9, :cond_1

    const-string p1, "PauseCommand"

    .line 166
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v0}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "FmLocalOffCommand"

    .line 168
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "FmNetworkOffCommand"

    .line 169
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "PlayCommand"

    .line 171
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    :goto_0
    const-string p1, "NextCommand"

    .line 173
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PrevCommand"

    .line 174
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "ResumeCommand"

    .line 175
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "BackwardCommand"

    .line 176
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "ForwardCommand"

    .line 177
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, v0}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "SpeedDownCommand"

    .line 179
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "SpeedUpCommand"

    .line 180
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "SetTimeCommand"

    .line 182
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v8}, Lbpa;->c(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v7}, Lbpa;->c(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v10}, Lbpa;->c(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v10}, Lbpa;->c(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v6}, Lbpa;->c(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v5}, Lbpa;->c(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, v4}, Lbpa;->c(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v3}, Lbpa;->c(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v2}, Lbpa;->a(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, v1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "SingleLoopCommand"

    .line 196
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    :cond_2
    const-string p1, "PushCommand"

    .line 199
    invoke-direct {p0, p1}, Lbpa;->b(Ljava/lang/String;)V

    const-string p1, "PlayBtCommand"

    .line 200
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string v0, "PlayProgramNewsCommand"

    .line 201
    invoke-direct {p0, v0}, Lbpa;->a(Ljava/lang/String;)V

    const-string v0, "MusicListPlayCommand"

    .line 202
    invoke-direct {p0, v0}, Lbpa;->a(Ljava/lang/String;)V

    const-string v9, "PlayProgramCommand"

    .line 203
    invoke-direct {p0, v9}, Lbpa;->a(Ljava/lang/String;)V

    const-string v11, "PlayMusicDailyCommand"

    .line 204
    invoke-direct {p0, v11}, Lbpa;->a(Ljava/lang/String;)V

    const-string v11, "PlayFmNameCommand"

    .line 205
    invoke-direct {p0, v11}, Lbpa;->a(Ljava/lang/String;)V

    const-string v11, "PlayFmChannelCommand"

    .line 206
    invoke-direct {p0, v11}, Lbpa;->a(Ljava/lang/String;)V

    const-string v11, "FmLocalOnCommand"

    .line 207
    invoke-direct {p0, v11}, Lbpa;->a(Ljava/lang/String;)V

    const-string v11, "FmNetworkOnCommand"

    .line 208
    invoke-direct {p0, v11}, Lbpa;->a(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v0}, Lbpa;->a(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v9}, Lbpa;->a(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayHistroyCommand"

    .line 212
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "PlayPersonalCommand"

    .line 213
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 216
    invoke-interface {p1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 217
    invoke-direct {p0, v4}, Lbpa;->c(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v3}, Lbpa;->c(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v2}, Lbpa;->a(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v1}, Lbpa;->a(Ljava/lang/String;)V

    const-string p1, "SingleLoopCommand"

    .line 222
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v8}, Lbpa;->c(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v7}, Lbpa;->c(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, v10}, Lbpa;->c(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v10}, Lbpa;->c(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, v6}, Lbpa;->c(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v5}, Lbpa;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onRebootPlayFinish(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CommandManager"

    const-string v0, "onRebootPlayFinish"

    .line 343
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "MediaCenterControlCommand"

    .line 344
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onUsbListLoaded(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "CommandManager"

    const-string v0, "onUsbListLoaded: ========= "

    .line 337
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PlayUsbCommand"

    .line 338
    invoke-direct {p0, p1}, Lbpa;->a(Ljava/lang/String;)V

    return-void
.end method
