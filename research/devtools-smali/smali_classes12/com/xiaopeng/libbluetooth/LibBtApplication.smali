.class public abstract Lcom/xiaopeng/libbluetooth/LibBtApplication;
.super Landroid/app/Application;
.source "LibBtApplication.java"


# instance fields
.field private XF:Lcom/xiaopeng/libbluetooth/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->pt()Lcom/xiaopeng/libbluetooth/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/LibBtApplication;->XF:Lcom/xiaopeng/libbluetooth/e;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/LibBtApplication;->XF:Lcom/xiaopeng/libbluetooth/e;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/libbluetooth/e;->setContext(Landroid/content/Context;)V

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/LibBtApplication;->XF:Lcom/xiaopeng/libbluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/e;->pu()V

    .line 15
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/LibBtApplication;->XF:Lcom/xiaopeng/libbluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/e;->pv()V

    .line 21
    return-void
.end method
