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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$runnable",
            "val$token",
            "val$ids"
        }
    .end annotation

    .line 459
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

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$ids:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$token:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->access$000([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
