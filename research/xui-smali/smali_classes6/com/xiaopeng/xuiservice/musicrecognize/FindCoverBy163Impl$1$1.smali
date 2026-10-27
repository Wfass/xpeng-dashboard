.class Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;
.super Ljava/lang/Object;
.source "FindCoverBy163Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;->this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;->this$1:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;->val$link:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;->findResult(Ljava/lang/String;)V

    .line 36
    return-void
.end method
