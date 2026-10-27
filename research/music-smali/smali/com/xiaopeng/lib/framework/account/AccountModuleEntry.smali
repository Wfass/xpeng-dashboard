.class public Lcom/xiaopeng/lib/framework/account/AccountModuleEntry;
.super Ljava/lang/Object;
.source "AccountModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 16
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAccount;

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/AccountImpl;->getInstance()Lcom/xiaopeng/lib/framework/account/AccountImpl;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
