.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;
.super Ljava/lang/Object;
.source "ScreenSelftestPresenter.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

.field private wT:I

.field private wU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private wV:Ljava/util/Timer;

.field private wW:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wT:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wU:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wV:Ljava/util/Timer;

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wW:Ljava/util/TimerTask;

    .line 134
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->ca(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wT:I

    return v0
.end method

.method private ca(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 81
    const-string v0, "ashell_val;live_val;mipi_val;sig1_val;sig2_val;sig3_val;sig4_val;"

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/a;->o(J)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "ScreenSelftestPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signalNameArray = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currentTime ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_7

    .line 90
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 91
    const/4 v5, 0x0

    .line 92
    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wU:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v6, v3, :cond_0

    .line 93
    iget-object v5, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wU:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 95
    :cond_0
    if-nez v5, :cond_1

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v6, "empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v6, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wU:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 120
    if-eqz v4, :cond_5

    .line 124
    move v4, v7

    goto :goto_4

    .line 116
    :pswitch_0
    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v7

    .line 117
    if-ne v4, v7, :cond_2

    .line 118
    move v4, v7

    goto :goto_1

    .line 117
    :cond_2
    nop

    .line 118
    move v4, v2

    :goto_1
    goto :goto_4

    .line 111
    :pswitch_1
    shr-int/lit8 v6, v4, 0x1

    and-int/2addr v6, v7

    shr-int/lit8 v4, v4, 0x3

    and-int/2addr v4, v7

    and-int/2addr v4, v6

    .line 112
    if-ne v4, v7, :cond_3

    .line 113
    move v4, v7

    goto :goto_2

    .line 112
    :cond_3
    nop

    .line 113
    move v4, v2

    :goto_2
    goto :goto_4

    .line 106
    :pswitch_2
    shr-int/lit8 v6, v4, 0x0

    and-int/2addr v6, v7

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v4, v7

    and-int/2addr v4, v6

    .line 107
    if-ne v4, v7, :cond_4

    .line 108
    move v4, v7

    goto :goto_3

    .line 107
    :cond_4
    nop

    .line 108
    move v4, v2

    :goto_3
    goto :goto_4

    .line 120
    :cond_5
    nop

    .line 124
    move v4, v2

    :goto_4
    if-eqz v4, :cond_6

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v4, 0x2

    invoke-virtual {v5, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 130
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wU:Ljava/util/ArrayList;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic ja()V
    .locals 4

    .line 168
    const-string v0, "PATH_SCREEN_DIAGNOSIS"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->cs(Ljava/lang/String;)I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    if-eqz v2, :cond_7

    .line 171
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Touch FAULT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_1
    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BUCK B FAULT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_2
    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BUCK A FAULT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_3
    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Backlight FAULT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_4
    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TCON FAULT,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_5
    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mipi signal error,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;->a(ZLjava/lang/String;)V

    .line 196
    :cond_7
    :goto_0
    return-void
.end method

.method public static synthetic lambda$p4DwAZLkCyGYubrl28P641RHXuQ(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->ja()V

    return-void
.end method


# virtual methods
.method public K(Z)V
    .locals 1

    .line 206
    const-string v0, "PATH_CHANGE_LCD_DIS_MODE"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 207
    const-string p1, "dismode1"

    goto :goto_0

    :cond_0
    const-string p1, "dismode0"

    .line 206
    :goto_0
    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/g;->F(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    return-void
.end method

.method public iW()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wV:Ljava/util/Timer;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wW:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 159
    return-void
.end method

.method public iX()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wV:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->wV:Ljava/util/Timer;

    .line 164
    return-void
.end method

.method public iY()V
    .locals 1

    .line 167
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/-$$Lambda$a$p4DwAZLkCyGYubrl28P641RHXuQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/-$$Lambda$a$p4DwAZLkCyGYubrl28P641RHXuQ;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public iZ()Z
    .locals 2

    .line 201
    const-string v0, "PATH_CHANGE_LCD_DIS_MODE"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    .line 202
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
