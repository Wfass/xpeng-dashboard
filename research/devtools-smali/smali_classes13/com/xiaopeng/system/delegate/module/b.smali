.class public Lcom/xiaopeng/system/delegate/module/b;
.super Ljava/lang/Object;
.source "SystemDelegateService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/b;->mContext:Landroid/content/Context;

    .line 32
    const-class v0, Lcom/xiaopeng/system/delegate/module/a;

    new-instance v1, Lcom/xiaopeng/system/delegate/module/a;

    invoke-direct {v1, p1}, Lcom/xiaopeng/system/delegate/module/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const-string v0, "SystemDelegateService"

    const-string v1, "start getCertificate!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string v0, "content://com.xiaopeng.system.delegate/cert/ssl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/system/delegate/module/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "SystemDelegateService"

    const-string v3, "query result success"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    nop

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_0
    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    const-string v1, "SystemDelegateService"

    const-string v2, "cursor is empty!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_2
    return-object v1

    .line 60
    :goto_0
    if-eqz v0, :cond_3

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
