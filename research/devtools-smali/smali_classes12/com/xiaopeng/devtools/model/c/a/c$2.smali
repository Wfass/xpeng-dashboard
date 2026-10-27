.class Lcom/xiaopeng/devtools/model/c/a/c$2;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/c/a/c;->cc(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/http/c<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic su:Lcom/xiaopeng/devtools/model/c/a/c;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/a/c;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$2;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    iput p2, p0, Lcom/xiaopeng/devtools/model/c/a/c$2;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c$2;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/HWAndSWInfoEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/HWAndSWInfoEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/xiaopeng/devtools/model/c/a/c$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c$2;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    iget v4, p0, Lcom/xiaopeng/devtools/model/c/a/c$2;->val$width:I

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c$2;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/c/a/c;->b(Lcom/xiaopeng/devtools/model/c/a/c;)Landroid/os/Handler;

    move-result-object v6

    const/4 v3, 0x3

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/devtools/model/c/a/c$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;IILjava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method
