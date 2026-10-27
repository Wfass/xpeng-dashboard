.class public abstract Lbdb;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:I

.field private c:Lbcv;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdb;->a:Ljava/util/List;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lbdb;->b:I

    .line 149
    new-instance v0, Lbdb$3;

    invoke-direct {v0, p0}, Lbdb$3;-><init>(Lbdb;)V

    iput-object v0, p0, Lbdb;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lbdb;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0}, Lbdb;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s()Ljava/lang/String;
    .locals 1

    const-string v0, "SP_RADIO_CURRENT_INFO"

    return-object v0
.end method

.method private t()V
    .locals 1

    .line 172
    iget-object v0, p0, Lbdb;->c:Lbcv;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lbcv;->a()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lbdb;->c:Lbcv;

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_BACK_POS"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method a(Lbdb$a;)V
    .locals 2

    const-string v0, "RadioDataProvider"

    const-string v1, "rebootPlay: "

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lbdb$1;

    invoke-direct {v0, p0, p1}, Lbdb$1;-><init>(Lbdb;Lbdb$a;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract a(Lbdb$a;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end method

.method protected abstract a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-direct/range {p0 .. p0}, Lbdb;->t()V

    .line 122
    invoke-static {}, Layf;->a()Layf;

    move-result-object v1

    iget-object v2, v0, Lbdb;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Layf;->a(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNextProgram: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getEndTime()Ljava/lang/String;

    move-result-object v1

    const-string v3, "00:00"

    .line 129
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "24:00"

    .line 132
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bs;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 133
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bs;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v5

    sub-int/2addr v4, v5

    .line 139
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit16 v3, v4, 0xe10

    mul-int/lit8 v5, v1, 0x3c

    add-int/2addr v3, v5

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/xiaopeng/musicradio/utils/bs;->g(J)J

    move-result-wide v5

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/xiaopeng/musicradio/utils/bs;->f(J)J

    move-result-wide v7

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/xiaopeng/musicradio/utils/bs;->b(J)J

    move-result-wide v9

    int-to-long v11, v3

    const-wide/16 v13, 0xe10

    mul-long/2addr v13, v5

    const-wide/16 v15, 0x3c

    mul-long/2addr v15, v7

    add-long/2addr v13, v15

    add-long/2addr v13, v9

    .line 144
    rem-long/2addr v13, v11

    sub-long/2addr v11, v13

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNextProgram: h = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " m = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentHour = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentMin = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nextTime = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Layf;->a()Layf;

    move-result-object v1

    iget-object v2, v0, Lbdb;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v11, v3

    invoke-virtual {v1, v2, v11, v12}, Layf;->a(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method a()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lbdb;->b()I

    move-result v0

    iput v0, p0, Lbdb;->b:I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method b()I
    .locals 1

    .line 42
    iget v0, p0, Lbdb;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method b(I)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePlayState: ======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_RADIO_PLAY_STATE_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 102
    new-instance v0, Lbdb$2;

    invoke-direct {v0, p0, p1}, Lbdb$2;-><init>(Lbdb;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method c()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lbdb;->d()I

    move-result v0

    iput v0, p0, Lbdb;->b:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method d()I
    .locals 1

    .line 52
    iget v0, p0, Lbdb;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected abstract e()Lbcv;
.end method

.method f()V
    .locals 2

    const-string v0, "RadioDataProvider"

    const-string v1, "cancel: "

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method abstract g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
.end method

.method protected h()V
    .locals 2

    .line 157
    invoke-direct {p0}, Lbdb;->t()V

    .line 159
    invoke-virtual {p0}, Lbdb;->e()Lbcv;

    move-result-object v0

    iput-object v0, p0, Lbdb;->c:Lbcv;

    .line 160
    iget-object v0, p0, Lbdb;->c:Lbcv;

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lbdb$4;

    invoke-direct {v1, p0}, Lbdb$4;-><init>(Lbdb;)V

    invoke-virtual {v0, v1}, Lbcv;->a(Lbcv$a;)V

    :cond_0
    return-void
.end method

.method i()I
    .locals 3

    .line 191
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_BACK_POS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method j()V
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePlayIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    iget v1, p0, Lbdb;->b:I

    const-string v2, "SP_RADIO_PLAY_INDEX"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method k()I
    .locals 7

    .line 208
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_RADIO_PLAY_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v3

    const-string v4, "SP_BACK_INDEX"

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;I)I

    move-result v3

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPlayIndex: ======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RadioDataProvider"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    .line 216
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;I)Z

    move v0, v3

    :cond_0
    return v0
.end method

.method l()I
    .locals 3

    .line 228
    invoke-virtual {p0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    const-string v1, "SP_RADIO_PLAY_STATE_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->b(Ljava/lang/String;I)I

    move-result v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastPlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected m()Lcom/xiaopeng/musicradio/utils/bm;
    .locals 2

    .line 234
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v1, "SP_RADIO_PROVIDER"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bm;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    return-object v0
.end method

.method n()Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lbdb;->g()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method o()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method p()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 3

    .line 248
    invoke-virtual {p0}, Lbdb;->d()I

    move-result v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_1

    .line 250
    iget-object v1, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method q()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 3

    .line 257
    invoke-virtual {p0}, Lbdb;->b()I

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_1

    .line 259
    iget-object v1, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lbdb;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lbdb;->a:Ljava/util/List;

    return-object v0
.end method
