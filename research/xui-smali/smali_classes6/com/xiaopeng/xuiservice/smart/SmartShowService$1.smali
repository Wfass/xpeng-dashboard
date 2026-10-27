.class Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;
.super Ljava/lang/Object;
.source "SmartShowService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartShowService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartShowService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartShowService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartShowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 70
    return-void
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 0
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 74
    return-void
.end method
