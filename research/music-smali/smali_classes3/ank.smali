.class public Lank;
.super Lanp;
.source "A2dpControl.java"


# instance fields
.field private e:Lanm;

.field private f:Lcom/nforetek/bt/aidl/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanm;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lanp;-><init>()V

    .line 43
    new-instance v0, Lank$1;

    invoke-direct {v0, p0}, Lank$1;-><init>(Lank;)V

    iput-object v0, p0, Lank;->f:Lcom/nforetek/bt/aidl/a;

    .line 18
    iput-object p1, p0, Lank;->b:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lank;->e:Lanm;

    return-void
.end method

.method static synthetic a(Lank;)Lanm;
    .locals 0

    .line 12
    iget-object p0, p0, Lank;->e:Lanm;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 0

    .line 78
    iget-object p1, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    iget-object p1, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/l;->k()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 p1, 0x64

    return p1
.end method

.method protected a()V
    .locals 2

    .line 35
    :try_start_0
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    iget-object v1, p0, Lank;->f:Lcom/nforetek/bt/aidl/a;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/l;->b(Lcom/nforetek/bt/aidl/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/nforetek/bt/aidl/l;)V
    .locals 1

    .line 25
    :try_start_0
    iput-object p1, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    .line 26
    iget-object v0, p0, Lank;->f:Lcom/nforetek/bt/aidl/a;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/l;->a(Lcom/nforetek/bt/aidl/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "A2dpControl"

    .line 28
    invoke-virtual {p0, v0, p1}, Lank;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/l;->a(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->l()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lank;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "00:00:00:00:00:00"

    return-object v0
.end method
