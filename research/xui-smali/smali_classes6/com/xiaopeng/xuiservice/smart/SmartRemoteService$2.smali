.class Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$2;
.super Ljava/lang/Object;
.source "SmartRemoteService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRemoteService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 98
    return-void
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 0
    .param p1, "effectName"    # I
    .param p2, "effectMode"    # I

    .line 102
    return-void
.end method
