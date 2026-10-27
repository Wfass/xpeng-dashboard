.class public abstract Lanp;
.super Ljava/lang/Object;
.source "AbsControl.java"


# instance fields
.field public a:Lcom/nforetek/bt/aidl/l;

.field public b:Landroid/content/Context;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lans$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lans;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanp;->c:Ljava/util/List;

    .line 26
    new-instance v0, Lanp$1;

    invoke-direct {v0, p0}, Lanp$1;-><init>(Lanp;)V

    iput-object v0, p0, Lanp;->d:Lans;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/nforetek/bt/aidl/l;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pkg:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lanp;->b:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p2, p0, Lanp;->a:Lcom/nforetek/bt/aidl/l;

    if-nez p2, :cond_1

    const-string p2, "nForeService == null"

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "getHfpConnectedAddress"

    .line 69
    invoke-virtual {p0, p1, v0}, Lanp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lanp;->a:Lcom/nforetek/bt/aidl/l;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 72
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->af()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0, p1, v0}, Lanp;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method
