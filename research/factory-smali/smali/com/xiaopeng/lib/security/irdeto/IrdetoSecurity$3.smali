.class Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

.field final synthetic val$token:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    .line 474
    iput-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 477
    sget-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->FAIL:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    .line 478
    .local v0, "result":Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    const-string v1, ""

    .line 480
    .local v1, "exceptionString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$ids:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$token:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->access$000([Ljava/lang/String;[Ljava/lang/String;)V

    .line 481
    sget-object v2, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->SUCCEED:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 485
    goto :goto_0

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$3;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;->onResult(Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;Ljava/lang/String;)V

    .line 488
    return-void
.end method
