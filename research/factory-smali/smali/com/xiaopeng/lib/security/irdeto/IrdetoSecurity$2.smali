.class Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$token:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    .line 457
    iput-object p1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->this$0:Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$ids:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$token:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->access$000([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 466
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 467
    return-void
.end method
