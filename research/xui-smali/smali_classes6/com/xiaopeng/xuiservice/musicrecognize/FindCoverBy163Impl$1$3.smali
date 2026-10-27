.class Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$3;
.super Ljava/lang/Object;
.source "FindCoverBy163Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$3;->this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$3;->this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;->findResult(Ljava/lang/String;)V

    .line 55
    return-void
.end method
