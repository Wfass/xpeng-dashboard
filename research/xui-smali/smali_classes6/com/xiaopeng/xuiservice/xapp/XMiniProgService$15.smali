.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$15;
.super Lcom/google/gson/reflect/TypeToken;
.source "XMiniProgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniAppDetails(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 882
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$15;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
