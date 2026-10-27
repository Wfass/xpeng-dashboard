.class public Lcom/xiaopeng/system/delegate/module/SystemDelegateService;
.super Ljava/lang/Object;
.source "SystemDelegateService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemDelegateService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateService;->mContext:Landroid/content/Context;

    .line 33
    const-class v0, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    new-instance v1, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    invoke-direct {v1, p1}, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 42
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

    .line 47
    const-string v0, "SystemDelegateService"

    const-string v1, "start getCertificate!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "content://com.xiaopeng.system.delegate/cert/ssl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 52
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "cert":Ljava/lang/String;
    const-string v3, "SystemDelegateService"

    const-string v4, "query result success"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    nop

    .line 61
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_0
    return-object v2

    .line 61
    .end local v2    # "cert":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 57
    :cond_1
    :try_start_1
    const-string v2, "SystemDelegateService"

    const-string v3, "cursor is empty!"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_2
    return-object v2

    .line 61
    :goto_0
    if-eqz v1, :cond_3

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "SystemDelegateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "content://com.xiaopeng.system.delegate/sysprop/set"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method
