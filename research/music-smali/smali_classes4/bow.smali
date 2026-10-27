.class public Lbow;
.super Ljava/lang/Object;
.source "SpeechCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbow$a;
    }
.end annotation


# instance fields
.field private a:Lbou;

.field private b:Lbot;

.field private c:Lbov;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lbou;

    invoke-direct {v0}, Lbou;-><init>()V

    iput-object v0, p0, Lbow;->a:Lbou;

    .line 25
    new-instance v0, Lbot;

    invoke-direct {v0}, Lbot;-><init>()V

    iput-object v0, p0, Lbow;->b:Lbot;

    .line 26
    new-instance v0, Lbov;

    invoke-direct {v0}, Lbov;-><init>()V

    iput-object v0, p0, Lbow;->c:Lbov;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbow;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbow;)Lbov;
    .locals 0

    .line 7
    iget-object p0, p0, Lbow;->c:Lbov;

    return-object p0
.end method

.method public static a()Lbow;
    .locals 1

    .line 15
    sget-object v0, Lbow$a;->a:Lbow;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechCommandManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lbow;->a:Lbou;

    invoke-virtual {v0, p1, p2}, Lbou;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lbow;->b:Lbot;

    invoke-virtual {v0, p1, p2}, Lbot;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechCommandManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lbow;->d:Landroid/os/Handler;

    new-instance v1, Lbow$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lbow$1;-><init>(Lbow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
