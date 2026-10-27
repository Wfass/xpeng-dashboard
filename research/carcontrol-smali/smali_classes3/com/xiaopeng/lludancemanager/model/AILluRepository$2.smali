.class Lcom/xiaopeng/lludancemanager/model/AILluRepository$2;
.super Ljava/lang/Object;
.source "AILluRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/model/AILluRepository;->requestAiLluResourceData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/model/AILluRepository;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository$2;->this$0:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository$2;->this$0:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V

    return-void
.end method
