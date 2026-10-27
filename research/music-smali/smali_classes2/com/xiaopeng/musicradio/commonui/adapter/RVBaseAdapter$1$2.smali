.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Z)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;->onLoadingCompleted()V

    return-void
.end method
