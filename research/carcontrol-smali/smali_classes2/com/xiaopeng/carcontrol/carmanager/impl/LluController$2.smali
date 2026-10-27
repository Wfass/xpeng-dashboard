.class Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;
.super Landroid/database/ContentObserver;
.source "LluController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->lambda$new$0$LluController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "x0",
            "val$resolver"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;->val$resolver:Landroid/content/ContentResolver;

    const-string v1, "isSayHiEnable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$700(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Z)V

    return-void
.end method
