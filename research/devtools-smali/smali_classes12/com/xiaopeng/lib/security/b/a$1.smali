.class Lcom/xiaopeng/lib/security/b/a$1;
.super Ljava/lang/Object;
.source "NoneSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vw:[Ljava/lang/String;

.field final synthetic Vx:[Ljava/lang/String;

.field final synthetic Vy:Ljava/lang/Runnable;

.field final synthetic Vz:Lcom/xiaopeng/lib/security/b/a;


# virtual methods
.method public run()V
    .locals 3

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/b/a$1;->Vz:Lcom/xiaopeng/lib/security/b/a;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/b/a$1;->Vw:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/b/a$1;->Vx:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/security/b/a;->b([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/b/a$1;->Vy:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    return-void
.end method
