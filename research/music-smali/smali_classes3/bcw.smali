.class public Lbcw;
.super Lbdb;
.source "LiveDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcw$d;,
        Lbcw$a;,
        Lbcw$c;,
        Lbcw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbdb<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field private d:Lbcw$c;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbdb;-><init>()V

    return-void
.end method

.method static synthetic a(Lbcw;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 0

    .line 32
    iput-object p1, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object p1
.end method

.method static synthetic a(Lbcw;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbcw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method


# virtual methods
.method protected a(Lbdb$a;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lbcw;->k()I

    move-result v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPlayCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiveDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 222
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "rebootPlayCallback: ======"

    .line 226
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-interface {p1, p2}, Lbdb$a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lbdb$a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lbcw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 267
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iput-object p1, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 167
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lbcw;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lbcw;->b:I

    .line 173
    invoke-virtual {p0}, Lbcw;->j()V

    .line 175
    new-instance v0, Lbcw$d;

    new-instance v1, Lbcw$3;

    invoke-direct {v1, p0, p2}, Lbcw$3;-><init>(Lbcw;Lbcw$b;)V

    invoke-direct {v0, p1, v1}, Lbcw$d;-><init>(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V

    iput-object v0, p0, Lbcw;->d:Lbcw$c;

    .line 199
    iget-object p1, p0, Lbcw;->d:Lbcw$c;

    invoke-virtual {p1}, Lbcw$c;->a()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbcw;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Lbcw$b;)V

    :goto_0
    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Lbcw$b;)V
    .locals 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " programInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    iput-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 90
    iget-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: programSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    :goto_1
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 95
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 96
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iput v2, p0, Lbcw;->b:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: ======="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lbcw;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lbcw;->j()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbcw;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 104
    new-instance v0, Lbcw$d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    new-instance v1, Lbcw$1;

    invoke-direct {v1, p0, p2}, Lbcw$1;-><init>(Lbcw;Lbcw$b;)V

    invoke-direct {v0, p1, v1}, Lbcw$d;-><init>(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Lbcw$b;)V

    iput-object v0, p0, Lbcw;->d:Lbcw$c;

    .line 119
    iget-object p1, p0, Lbcw;->d:Lbcw$c;

    invoke-virtual {p1}, Lbcw$c;->a()V

    return-void
.end method

.method a(Ljava/lang/String;Lbcw$b;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastRadio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lbcw;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 126
    invoke-interface {p2, v0}, Lbcw$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lbcw;->b:I

    .line 131
    invoke-virtual {p0}, Lbcw;->j()V

    .line 133
    iput-object p1, p0, Lbcw;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 135
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    iget v0, p0, Lbcw;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 139
    :cond_2
    new-instance v0, Lbcw$a;

    new-instance v1, Lbcw$2;

    invoke-direct {v1, p0, p2}, Lbcw$2;-><init>(Lbcw;Lbcw$b;)V

    invoke-direct {v0, p1, v1}, Lbcw$a;-><init>(Ljava/lang/String;Lbcw$b;)V

    iput-object v0, p0, Lbcw;->d:Lbcw$c;

    .line 161
    iget-object p1, p0, Lbcw;->d:Lbcw$c;

    invoke-virtual {p1}, Lbcw$c;->a()V

    return-void
.end method

.method a()Z
    .locals 1

    .line 41
    invoke-super {p0}, Lbdb;->a()Z

    .line 42
    invoke-virtual {p0}, Lbcw;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method b()I
    .locals 2

    .line 48
    invoke-super {p0}, Lbdb;->b()I

    move-result v0

    .line 49
    iget-object v1, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method c()Z
    .locals 1

    .line 57
    invoke-super {p0}, Lbdb;->c()Z

    .line 58
    invoke-virtual {p0}, Lbcw;->j()V

    const/4 v0, 0x1

    return v0
.end method

.method d()I
    .locals 1

    .line 64
    invoke-super {p0}, Lbdb;->d()I

    move-result v0

    if-gez v0, :cond_0

    .line 66
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method protected e()Lbcv;
    .locals 2

    .line 211
    iget-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lbcx;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbcx;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method f()V
    .locals 1

    .line 233
    invoke-super {p0}, Lbdb;->f()V

    .line 234
    iget-object v0, p0, Lbcw;->d:Lbcw$c;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lbcw$c;->b()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lbcw;->d:Lbcw$c;

    :cond_0
    return-void
.end method

.method g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 5

    .line 242
    iget v0, p0, Lbcw;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 245
    :cond_0
    iget v0, p0, Lbcw;->b:I

    iget-object v3, p0, Lbcw;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 246
    iget-object v0, p0, Lbcw;->a:Ljava/util/List;

    iget v1, p0, Lbcw;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0

    .line 248
    :cond_1
    iget-object v0, p0, Lbcw;->c:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0

    .line 251
    :cond_2
    iget-object v0, p0, Lbcw;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 254
    :cond_3
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;-><init>()V

    .line 255
    new-instance v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;-><init>()V

    .line 256
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setId(I)V

    .line 257
    iget-object v3, p0, Lbcw;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setHz(D)V

    .line 258
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 259
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setId(I)V

    return-object v0
.end method
