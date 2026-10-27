.class public Lanu;
.super Lanp;
.source "PhoneControl.java"


# instance fields
.field private e:Lanq;

.field private f:Lcom/nforetek/bt/aidl/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanq;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lanp;-><init>()V

    .line 48
    new-instance v0, Lanu$1;

    invoke-direct {v0, p0}, Lanu$1;-><init>(Lanu;)V

    iput-object v0, p0, Lanu;->f:Lcom/nforetek/bt/aidl/e;

    .line 23
    iput-object p1, p0, Lanu;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lanu;->e:Lanq;

    return-void
.end method

.method static synthetic a(Lanu;)Lanq;
    .locals 0

    .line 16
    iget-object p0, p0, Lanu;->e:Lanq;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    iget-object v1, p0, Lanu;->f:Lcom/nforetek/bt/aidl/e;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/l;->b(Lcom/nforetek/bt/aidl/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected a(Lcom/nforetek/bt/aidl/l;)V
    .locals 1

    .line 30
    :try_start_0
    iput-object p1, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    .line 31
    iget-object v0, p0, Lanu;->f:Lcom/nforetek/bt/aidl/e;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/l;->a(Lcom/nforetek/bt/aidl/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PhoneControl"

    .line 33
    invoke-virtual {p0, v0, p1}, Lanu;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    const-string v0, "PhoneControl"

    const-string v1, "isHfpConnected"

    .line 141
    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 145
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/l;->ae()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return v2
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/NfHfpClientCall;",
            ">;"
        }
    .end annotation

    const-string v0, "PhoneControl"

    const-string v1, "getCallList"

    .line 373
    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    iget-object v0, p0, Lanu;->a:Lcom/nforetek/bt/aidl/l;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->ai()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
