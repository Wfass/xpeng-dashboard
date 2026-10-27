.class Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

.field final synthetic val$callback:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "null mcu security key"

    .line 234
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/private/sec/si_mcu.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "IrdetoSecurity"

    .line 243
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
