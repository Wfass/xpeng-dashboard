.class public Lcom/xiaopeng/devtools/system/service/CollectionService;
.super Landroid/app/Service;
.source "CollectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/system/service/CollectionService$a;
    }
.end annotation


# instance fields
.field private AW:Lcom/xiaopeng/devtools/system/service/CollectionService$a;

.field private AX:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/devtools/system/service/CollectionService$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/system/service/CollectionService$a;-><init>(Lcom/xiaopeng/devtools/system/service/CollectionService;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/CollectionService;->AW:Lcom/xiaopeng/devtools/system/service/CollectionService$a;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CollectionService;->AX:Z

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/CollectionService;->AX:Z

    .line 52
    return-void
.end method

.method public kO()V
    .locals 0

    .line 48
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CollectionService;->AW:Lcom/xiaopeng/devtools/system/service/CollectionService$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object v0

    const-string v1, "k_s_d"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/utils/q;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/CollectionService;->AX:Z

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    return-void
.end method
