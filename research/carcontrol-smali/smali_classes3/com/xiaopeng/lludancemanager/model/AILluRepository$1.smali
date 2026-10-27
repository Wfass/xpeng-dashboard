.class Lcom/xiaopeng/lludancemanager/model/AILluRepository$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "AILluRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/model/AILluRepository;->requestAiLluUserManual()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
        ">;>;"
    }
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

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
