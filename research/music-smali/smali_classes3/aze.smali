.class public Laze;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laze$c;,
        Laze$a;,
        Laze$b;
    }
.end annotation


# static fields
.field private static e:J


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Laze$a;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Laze;->a:Z

    .line 54
    iput-boolean v0, p0, Laze;->b:Z

    .line 55
    iput-boolean v0, p0, Laze;->c:Z

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    sput-wide v0, Laze;->e:J

    return-void
.end method

.method synthetic constructor <init>(Laze$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Laze;-><init>()V

    return-void
.end method

.method public static a()Laze;
    .locals 1

    .line 64
    sget-object v0, Laze$b;->a:Laze;

    return-object v0
.end method

.method private a(ILjava/lang/String;J)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProgramFetchModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Laze;->a:Z

    .line 125
    iput-boolean p1, p0, Laze;->b:Z

    .line 126
    iput-boolean p1, p0, Laze;->c:Z

    .line 127
    new-instance p2, Lblv$a;

    invoke-direct {p2, p1}, Lblv$a;-><init>(Z)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Laze;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Laze;->f()V

    return-void
.end method

.method static synthetic a(Laze;ILjava/lang/String;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Laze;->a(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Laze;Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Laze;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Laze;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Laze;->a:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 72
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic e()J
    .locals 2

    .line 43
    sget-wide v0, Laze;->e:J

    return-wide v0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Laze;->a:Z

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Laze;->c:Z

    .line 117
    iput-boolean v0, p0, Laze;->b:Z

    const-string v2, "should_down_read_love"

    .line 118
    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 119
    new-instance v0, Lblv$a;

    invoke-direct {v0, v1}, Lblv$a;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Laze;->a:Z

    .line 77
    iput-boolean v0, p0, Laze;->b:Z

    .line 78
    iput-boolean v0, p0, Laze;->c:Z

    .line 79
    iget-object v0, p0, Laze;->d:Laze$a;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Laze$a;->a()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Laze;->d:Laze$a;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 8

    .line 86
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    .line 87
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->c()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downReadLove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProgramFetchModel"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    sub-long/2addr v4, v6

    sput-wide v4, Laze;->e:J

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Laze;->b:Z

    const-string v2, "should_down_read_love"

    .line 94
    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Laze;->a:Z

    if-nez v2, :cond_2

    const-string v2, "downloadUserData: down readlove"

    .line 95
    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-boolean v0, p0, Laze;->a:Z

    .line 97
    iget-object v0, p0, Laze;->d:Laze$a;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Laze$a;->a()V

    .line 100
    :cond_1
    new-instance v0, Laze$a;

    invoke-direct {v0, v1}, Laze$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laze;->d:Laze$a;

    .line 101
    iget-object v0, p0, Laze;->d:Laze$a;

    invoke-virtual {v0}, Laze$a;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ProgramFetchModel"

    const-string v1, "redownloadProgram: "

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Laze;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "should_down_read_love"

    .line 108
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Laze;->a:Z

    .line 110
    invoke-virtual {p0}, Laze;->c()V

    :cond_0
    return-void
.end method
