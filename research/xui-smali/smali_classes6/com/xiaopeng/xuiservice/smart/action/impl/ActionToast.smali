.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionToast.java"


# instance fields
.field private final duration:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "show"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->text:Ljava/lang/String;

    .line 18
    const-string v0, "long"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->duration:I

    .line 19
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->text:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->duration:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$b72DREyMS5CDOTvvoy9sIYxl5Uc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$b72DREyMS5CDOTvvoy9sIYxl5Uc;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;)V

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->duration:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0xdac

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7d0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
