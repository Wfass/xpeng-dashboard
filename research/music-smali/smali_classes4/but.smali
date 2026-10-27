.class public abstract Lbut;
.super Lbvm$a;
.source "SpeechNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbvm$a;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

.field protected b:Lcom/xiaopeng/speech/common/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lbvm$a;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lbut;->d:Z

    .line 21
    new-instance v0, Lcom/xiaopeng/speech/common/util/e;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/util/e;-><init>()V

    iput-object v0, p0, Lbut;->b:Lcom/xiaopeng/speech/common/util/e;

    .line 25
    invoke-direct {p0, p0}, Lbut;->a(Lbvm;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    move-result-object v0

    iput-object v0, p0, Lbut;->a:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    return-void
.end method

.method private a(Lbvm;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    .locals 6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Processor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 101
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 102
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "bind %s error"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lbut;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lbut;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "jarvis.dm.listening"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jarvis.dm.wait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performCommand, command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbut;->a:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/annotation/ICommandProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "performCommand error "

    .line 86
    invoke-static {p0, p2, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lbut;->c:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lbut;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lbut;->a:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lbut;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lbut$1;

    invoke-direct {v1, p0, p1, p2}, Lbut$1;-><init>(Lbut;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lbut;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lbut;->d:Z

    .line 30
    iget-boolean p1, p0, Lbut;->d:Z

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lbut;->b()V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lbut;->c()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lbut;->d:Z

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lbut;->a:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/xiaopeng/speech/annotation/ICommandProcessor;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
