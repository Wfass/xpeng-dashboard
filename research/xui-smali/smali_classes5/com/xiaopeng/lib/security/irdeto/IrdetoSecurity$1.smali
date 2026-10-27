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
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/private/sec/si_mcu.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 236
    .local v1, "data":[B
    if-nez v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const-string v3, "null mcu security key"

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "data":[B
    goto :goto_1

    .line 237
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "data":[B
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "data":[B
    :goto_1
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const-string v1, "IrdetoSecurity"

    const-string v2, "null mcu security key"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const-string v2, "null mcu security key"

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
