.class Lcom/xiaopeng/lib/security/a/a$1;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oo:Lcom/xiaopeng/lib/http/c;


# virtual methods
.method public run()V
    .locals 3

    .line 233
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/private/sec/si_mcu.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/http/a;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/xiaopeng/lib/security/b;->dF(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    if-nez v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/a/a$1;->oo:Lcom/xiaopeng/lib/http/c;

    const-string v1, "null mcu security key"

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/security/a/a$1;->oo:Lcom/xiaopeng/lib/http/c;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/http/c;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    goto :goto_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const-string v0, "IrdetoSecurity"

    const-string v1, "null mcu security key"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/lib/security/a/a$1;->oo:Lcom/xiaopeng/lib/http/c;

    const-string v1, "null mcu security key"

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/c;->j(Ljava/lang/Object;)V

    .line 246
    :goto_2
    return-void
.end method
