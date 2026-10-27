.class public abstract Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionSimple.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract action()V
.end method

.method protected final onStart()V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method protected final onStop()V
    .locals 0

    .line 18
    return-void
.end method

.method public run()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;->action()V

    .line 25
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$7RPAn1m3p0giuyujToCxa0dP6Wg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$7RPAn1m3p0giuyujToCxa0dP6Wg;-><init>(Lcom/xiaopeng/xuiservice/smart/action/ActionSimple;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method
