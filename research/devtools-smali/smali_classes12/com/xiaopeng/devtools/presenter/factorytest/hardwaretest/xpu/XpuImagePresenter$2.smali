.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;
.super Ljava/lang/Object;
.source "XpuImagePresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/system/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d([BI)V
    .locals 6

    .line 86
    nop

    .line 87
    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->yb:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 88
    const-string p1, "XpuImagePresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is invalid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xS:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 92
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 93
    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xW:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 94
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x100

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xV:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 95
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x100

    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xU:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 96
    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 97
    sget-object v2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xZ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x100

    sget-object v3, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xY:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 98
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 99
    const-string v3, "XpuImagePresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", framecnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", blkcnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const v3, 0x186a1

    const/4 v4, 0x1

    if-gt v0, p2, :cond_4

    sget-object p2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result p2

    aget-byte p2, p1, p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    sget-object p2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xR:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    .line 101
    invoke-virtual {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result p2

    aget-byte p2, p1, p2

    if-ne p2, v4, :cond_4

    .line 102
    sget-object p2, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ya:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result p2

    aget-byte p2, p1, p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 112
    :pswitch_0
    if-ne v2, v4, :cond_4

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2, v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I

    .line 114
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I

    .line 115
    nop

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ya:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    aput-byte v1, p2, v0

    goto :goto_1

    .line 104
    :pswitch_1
    const-string p2, "XpuImagePresenter"

    const-string v0, "receive ack connection ready"

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2, v4}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;Z)Z

    .line 110
    goto :goto_0

    .line 127
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I

    move-result p2

    add-int/2addr p2, v4

    if-ne v2, p2, :cond_4

    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->e(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I

    move-result p2

    if-ne v1, p2, :cond_4

    .line 128
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2, v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I

    .line 129
    nop

    .line 130
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ya:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    const/4 v1, 0x7

    aput-byte v1, p2, v0

    goto :goto_1

    .line 120
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I

    move-result p2

    add-int/2addr p2, v4

    if-ne v2, p2, :cond_4

    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->e(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)I

    move-result p2

    if-ne v1, p2, :cond_4

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2, v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;I)I

    .line 122
    nop

    .line 123
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ya:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    aput-byte v1, p2, v0

    goto :goto_1

    .line 136
    :cond_4
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 138
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->f(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 139
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 140
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xW:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xW:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 141
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xV:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xV:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xU:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xU:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 143
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xZ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xZ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte v1, p1, v1

    aput-byte v1, p2, v0

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xY:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->xY:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$INDEX;->ordinal()I

    move-result v1

    aget-byte p1, p1, v1

    aput-byte p1, p2, v0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->g(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Lcom/xiaopeng/devtools/system/c/c;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/system/c/c;->z([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 148
    :goto_2
    goto :goto_3

    .line 150
    :cond_5
    const-string p2, "XpuImagePresenter"

    const-string v0, "receive data is illegal"

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->g(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Lcom/xiaopeng/devtools/system/c/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/system/c/c;->y([B)V

    .line 153
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->h(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public jA()V
    .locals 2

    .line 68
    const-string v0, "XpuImagePresenter"

    const-string v1, "onConnectSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public jB()V
    .locals 2

    .line 73
    const-string v0, "XpuImagePresenter"

    const-string v1, "onConnectFail"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1004d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/u;->bd(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public jC()V
    .locals 2

    .line 79
    const-string v0, "XpuImagePresenter"

    const-string v1, "onReadException"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1004d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/u;->bd(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$2;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jx()V

    .line 82
    return-void
.end method
