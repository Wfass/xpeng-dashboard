.class public Lcom/xiaopeng/system/delegate/module/a;
.super Ljava/lang/Object;
.source "SystemDelegateModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# instance fields
.field private volatile YF:Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/a;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 26
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    if-ne p1, v0, :cond_2

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/system/delegate/module/a;->YF:Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    if-nez p1, :cond_1

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/system/delegate/module/a;->YF:Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/xiaopeng/system/delegate/module/b;

    iget-object v0, p0, Lcom/xiaopeng/system/delegate/module/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/system/delegate/module/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/system/delegate/module/a;->YF:Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    .line 32
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/system/delegate/module/a;->YF:Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    return-object p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
