.class public Lcom/xiaopeng/musicradio/utils/c;
.super Ljava/lang/Object;
.source "AppStartupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/c$a;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->b:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/utils/c;->c:Z

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/c$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/c;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/musicradio/utils/c$a;->a:Lcom/xiaopeng/musicradio/utils/c;

    return-object v0
.end method

.method public static h()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->i()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/utils/c;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppFirstFrameCompleteSimple mAppFirstFrameComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStartupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppFirstFrameComplete mAppFirstFrameComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStartupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->a:Z

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$d;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$d;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    const-string v0, "onAppFirstFrameComplete post event"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->b:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->b:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->c:Z

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->d:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->d:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/c;->d:Z

    return-void
.end method
